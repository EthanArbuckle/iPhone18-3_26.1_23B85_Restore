@interface AppleAOPAudioDevice
- (AppleAOPAudioDevice)initWithDeviceUID:(id)d withDeviceName:(id)name withModelName:(id)modelName withPlugin:(id)plugin withIOObject:(unsigned int)object;
- (BOOL)getCustomPropertyInfoByIndex:(unsigned int)index forCustPropInfo:(AudioServerPlugInCustomPropertyInfo *)info;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)tryHasProperty:(const AudioObjectPropertyAddress *)property;
- (__CFDictionary)voiceTriggerGetConfigureDataId;
- (__CFDictionary)voiceTriggerGetData;
- (basic_string<char,)getDiagonsticData;
- (id).cxx_construct;
- (int)tryPerformStartIO;
- (int)tryPerformStopIO;
- (unsigned)readAvailablePastData;
- (void)enableListening:(BOOL)listening;
- (void)notifyDevicePropertiesChanged;
- (void)updateStreamDescription;
@end

@implementation AppleAOPAudioDevice

- (__CFDictionary)voiceTriggerGetConfigureDataId
{
  VoiceTriggerConfiguration = AOPAudioDeviceHWManager::HW_GetVoiceTriggerConfiguration(self->mAOPAudioHWManagerPtr.__ptr_);
  v5.var0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *&v5.var1 = 256;
  CACFDictionary::AddString(&v5, @"CorealisRTModelVersion", VoiceTriggerConfiguration);
  CFRelease(VoiceTriggerConfiguration);
  var0 = v5.var0;
  sub_1FB8(&v5);
  return var0;
}

- (int)tryPerformStartIO
{
  mStartCount = self->mStartCount;
  kdebug_trace();
  ptr = self->mStateMutexPtr.__ptr_;
  v27 = ptr;
  v5 = (*(*ptr + 16))(ptr);
  v28 = v5;
  if (!self->mStartCount)
  {
    AOPAudioDeviceHWManager::HW_StatusReset(self->mAOPAudioHWManagerPtr.__ptr_);
    v6 = self->mAOPAudioHWManagerPtr.__ptr_;
    v25 = *(v6 + 56);
    v26 = *(v6 + 9);
    getBytesPerPacket = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_2440;
    v20[3] = &unk_249B0;
    v20[4] = &self->mIOMutexPtr;
    v20[5] = &self->mAOPAudioHWManagerPtr;
    v21 = v25;
    v24 = getBytesPerPacket;
    v22 = v26;
    p_mIOStatus = &self->mIOStatus;
    [(AppleAOPAudioDevice *)self setGetZeroTimestampBlock:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2BB8;
    v18[3] = &unk_249D0;
    hasInput = [(AppleAOPAudioDevice *)self hasInput];
    [(AppleAOPAudioDevice *)self setWillDoReadInputBlock:v18];
    getBytesPerPacket2 = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
    getBytesPerSample = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerSample];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2FEC;
    v14[3] = &unk_249F0;
    v15 = getBytesPerPacket2;
    v16 = getBytesPerSample;
    v14[4] = self;
    v14[5] = &self->mAOPAudioHWManagerPtr;
    v14[6] = &self->mIOMutexPtr;
    InputDataBufferNull = ForceReadInputDataBufferNull();
    [(AppleAOPAudioStream *)self->_halInputAudioStream setReadInputBlock:v14];
  }

  [(AppleAOPAudioDevice *)self startInput:1];
  v13.receiver = self;
  v13.super_class = AppleAOPAudioDevice;
  performStartIO = [(AppleAOPAudioDevice *)&v13 performStartIO];
  v11 = self->mStartCount;
  kdebug_trace();
  if (v5)
  {
    (*(*ptr + 24))(ptr);
  }

  return performStartIO;
}

- (int)tryPerformStopIO
{
  mStartCount = self->mStartCount;
  kdebug_trace();
  ptr = self->mStateMutexPtr.__ptr_;
  v23 = ptr;
  v5 = (*(*ptr + 16))(ptr);
  v24 = v5;
  v22.receiver = self;
  v22.super_class = AppleAOPAudioDevice;
  performStopIO = [(AppleAOPAudioDevice *)&v22 performStopIO];
  [(AppleAOPAudioDevice *)self startInput:0];
  if (!self->mStartCount)
  {
    [(AppleAOPAudioDevice *)self setGetZeroTimestampBlock:0];
    [(AppleAOPAudioDevice *)self setWillDoReadInputBlock:0];
    [(AppleAOPAudioStream *)self->_halInputAudioStream setReadInputBlock:0];
    v14 = self->mAOPAudioHWManagerPtr.__ptr_;
    v15 = *(v14 + 31);
    if (v15 && v15 <= 100 * (v15 - *(v14 + 32)))
    {
      v20 = *(v14 + 31);
      sub_AABC("Detected %lld/%lld zero checksums during I/O session\n", v7, v8, v9, v10, v11, v12, v13, v15 - *(v14 + 256));
      v14 = self->mAOPAudioHWManagerPtr.__ptr_;
    }

    v16 = *(v14 + 37) - *(v14 + 38);
    if (v16)
    {
      v21 = *(v14 + 37);
      sub_8C70("Detected %lld/%lld read attempts > ring buffer end bounds during I/O session\n", v7, v8, v9, v10, v11, v12, v13, v16);
      v14 = self->mAOPAudioHWManagerPtr.__ptr_;
    }

    v17 = *(v14 + 43) - *(v14 + 44);
    if (v17)
    {
      sub_8C70("Detected %lld/%lld read attempts < ring buffer start bounds during I/O session\n", v7, v8, v9, v10, v11, v12, v13, v17);
    }
  }

  v18 = self->mStartCount;
  kdebug_trace();
  if (v5)
  {
    (*(*ptr + 24))(ptr);
  }

  return performStopIO;
}

- (void)updateStreamDescription
{
  BytesPerSample = AOPAudioDeviceHWManager::HW_GetBytesPerSample(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setBytesPerSample:BytesPerSample];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setBytesPerSample:BytesPerSample];
  ChannelsPerFrame = AOPAudioDeviceHWManager::HW_GetChannelsPerFrame(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setChannelsPerFrame:ChannelsPerFrame];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setChannelsPerFrame:ChannelsPerFrame];
  FramesPerPacket = AOPAudioDeviceHWManager::HW_GetFramesPerPacket(self->mAOPAudioHWManagerPtr.__ptr_);
  [(AppleAOPAudioStream *)self->_halInputAudioStream setFramesPerPacket:FramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setFramesPerPacket:FramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat setSampleRateHz:AOPAudioDeviceHWManager::HW_GetInputSamplesPerSec(self->mAOPAudioHWManagerPtr.__ptr_)];
  LOBYTE(FramesPerPacket) = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerSample];
  [(AppleAOPAudioStream *)self->_halInputAudioStream getChannelsPerFrame];
  [(AppleAOPAudioStream *)self->_halInputAudioStream getFramesPerPacket];
  [(AppleAOPAudioStream *)self->_halInputAudioStream getSampleRateHz];
  sub_1FF8("Device::updateStreamDescription() stream desc: { %d bytes/sample, %d channels/frame, %d frames/packet, %f samples/sec }\n", v6, v7, v8, v9, v10, v11, v12, FramesPerPacket);
  LOBYTE(FramesPerPacket) = [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getBytesPerSample];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getChannelsPerFrame];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getFramesPerPacket];
  [(AppleAOPAudioStream *)self->_driverInputAudioStreamFormat getSampleRateHz];
  sub_1FF8("Device::updateStreamDescription() input stream desc: { %d bytes/sample, %d channels/frame, %d frames/packet, %f samples/sec }\n", v13, v14, v15, v16, v17, v18, v19, FramesPerPacket);
}

- (void)notifyDevicePropertiesChanged
{
  v5 = 0u;
  LODWORD(v6) = 0;
  *(&v5 + 4) = 0x676C6F6273616674;
  v3 = [(AppleAOPAudioDevice *)self plugin:0x676C6F6272696E67];
  [v3 changedProperty:&v4 forObject:self];
}

- (AppleAOPAudioDevice)initWithDeviceUID:(id)d withDeviceName:(id)name withModelName:(id)modelName withPlugin:(id)plugin withIOObject:(unsigned int)object
{
  dCopy = d;
  nameCopy = name;
  modelNameCopy = modelName;
  pluginCopy = plugin;
  objectCopy = object;
  v26.receiver = self;
  v26.super_class = AppleAOPAudioDevice;
  v15 = [(AppleAOPAudioDevice *)&v26 initWithDeviceUID:dCopy withPlugin:pluginCopy];
  v16 = v15;
  if (v15)
  {
    [(AppleAOPAudioDevice *)v15 setDeviceName:nameCopy];
    [v16 setModelUID:modelNameCopy];
    [v16 setManufacturerName:@"Apple Inc."];
    [v16 setModelName:modelNameCopy];
    [v16 setCanBeDefaultDevice:1];
    [v16 setCanBeDefaultSystemDevice:1];
    [v16 setCanChangeDeviceName:0];
    [v16 setSamplingRates:&off_25200];
    [v16 setSamplingRate:16000.0];
    [v16 setTransportType:1986622068];
    v17 = [ASDStreamFormat alloc];
    [v16 samplingRate];
    v18 = [v17 initWithSampleRate:1 numChannels:3 commonPCMFormat:1 isInterleaved:?];
    [v18 setBytesPerFrame:{(objc_msgSend(v18, "bitsPerChannel") >> 3) * objc_msgSend(v18, "channelsPerFrame")}];
    [v18 setBytesPerPacket:{objc_msgSend(v18, "framesPerPacket") * objc_msgSend(v18, "bytesPerFrame")}];
    [v16 samplingRate];
    [v18 setSampleRate:?];
    [v16 samplingRate];
    [v18 setMinimumSampleRate:?];
    [v16 samplingRate];
    [v18 setMaximumSampleRate:?];
    v19 = +[NSMutableArray array];
    [v19 addObject:v18];
    v20 = [[AppleAOPAudioStream alloc] initWithDirection:1768845428 owningDevice:v16 plugin:pluginCopy formats:v19];
    v21 = v16[1];
    v16[1] = v20;

    [v16[1] setStreamName:@"InputStream"];
    v22 = [[AppleAOPAudioStream alloc] initWithDirection:1768845428 owningDevice:v16 plugin:pluginCopy formats:v19];
    v23 = v16[2];
    v16[2] = v22;

    [v16[2] setStreamName:@"dummy"];
    sub_BB30();
  }

  return 0;
}

- (BOOL)getCustomPropertyInfoByIndex:(unsigned int)index forCustPropInfo:(AudioServerPlugInCustomPropertyInfo *)info
{
  v5 = &aDpsdtslp[12 * index];
  if (!*v5 && !self->mChannelEnableMaskAvailable)
  {
    return 0;
  }

  if ([(AppleAOPAudioDevice *)self getNumCustomProperties]> index)
  {
    *&info->mSelector = *v5;
    info->mQualifierDataType = *(v5 + 2);
  }

  return 1;
}

- (BOOL)tryHasProperty:(const AudioObjectPropertyAddress *)property
{
  ptr = self->mStateMutexPtr.__ptr_;
  v21 = ptr;
  v6 = (*(*ptr + 16))(ptr, a2);
  v22 = v6;
  if (!property)
  {
    goto LABEL_11;
  }

  mSelector = property->mSelector;
  mChannelEnableMaskAvailable = 1;
  if (property->mSelector <= 1635152996)
  {
    if (mSelector <= 1634692198)
    {
      if (mSelector == 1633903475)
      {
        goto LABEL_30;
      }

      if (mSelector == 1634689389 || mSelector == 1634690413)
      {
        mChannelEnableMaskAvailable = self->mChannelEnableMaskAvailable;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (mSelector > 1635152992)
    {
      if (mSelector == 1635152993)
      {
        goto LABEL_30;
      }

      v9 = 29795;
LABEL_21:
      if (mSelector == (v9 | 0x61760000))
      {
        goto LABEL_22;
      }

LABEL_28:
      v20.receiver = self;
      v20.super_class = AppleAOPAudioDevice;
      IsVoiceTriggerSupported = [(AppleAOPAudioDevice *)&v20 hasProperty:property];
      goto LABEL_29;
    }

    if (mSelector == 1634692199)
    {
      mChannelEnableMaskAvailable = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(self->mAOPAudioHWManagerPtr.__ptr_);
      sub_1FF8("Device::hasProperty(kAOPAudioDevicePropertyEnableListeningOnGesture) : %d\n", v13, v14, v15, v16, v17, v18, v19, mChannelEnableMaskAvailable);
      goto LABEL_30;
    }

    if (mSelector != 1634694002)
    {
      goto LABEL_28;
    }

LABEL_11:
    mChannelEnableMaskAvailable = 0;
    goto LABEL_30;
  }

  if (mSelector > 1684107363)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector == 1685087596)
      {
        goto LABEL_30;
      }

      v10 = 1685287012;
    }

    else
    {
      if (mSelector == 1684107364)
      {
        goto LABEL_30;
      }

      v10 = 1684893796;
    }

LABEL_27:
    if (mSelector == v10)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (mSelector <= 1668641651)
  {
    if (mSelector == 1635152997)
    {
LABEL_22:
      IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_);
LABEL_29:
      mChannelEnableMaskAvailable = IsVoiceTriggerSupported;
      goto LABEL_30;
    }

    v9 = 29807;
    goto LABEL_21;
  }

  if (mSelector != 1668641652)
  {
    v10 = 1684105587;
    goto LABEL_27;
  }

  mChannelEnableMaskAvailable = [(AppleAOPAudioDevice *)self getNumCustomProperties]!= 0;
LABEL_30:
  if (v6)
  {
    (*(*ptr + 24))(ptr);
  }

  return mChannelEnableMaskAvailable & 1;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  ptr = self->mStateMutexPtr.__ptr_;
  v31 = 0;
  v29 = ptr;
  v13 = (*(*ptr + 16))(ptr, a2);
  v30 = v13;
  HasPropertyEnableListeningOnGesture = 0;
  if (!settable)
  {
    goto LABEL_36;
  }

  mSelector = settable->mSelector;
  if (settable->mSelector > 1635153006)
  {
    if (mSelector > 1684107363)
    {
      if (mSelector > 1685087595)
      {
        if (mSelector == 1685087596)
        {
          HasPropertyEnableListeningOnGesture = 1;
          goto LABEL_36;
        }

        v16 = 1685287012;
      }

      else
      {
        if (mSelector == 1684107364)
        {
          goto LABEL_36;
        }

        v16 = 1684893796;
      }

LABEL_29:
      if (mSelector == v16)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    if (mSelector == 1635153007 || mSelector == 1668641652 || mSelector == 1684105587)
    {
      goto LABEL_36;
    }

LABEL_30:
    v28.receiver = self;
    v28.super_class = AppleAOPAudioDevice;
    IsVoiceTriggerSupported = [(AppleAOPAudioDevice *)&v28 isPropertySettable:settable];
    goto LABEL_31;
  }

  if (mSelector <= 1634692198)
  {
    if (mSelector == 1633903475)
    {
      goto LABEL_36;
    }

    if (mSelector == 1634689389 || mSelector == 1634690413)
    {
      HasPropertyEnableListeningOnGesture = self->mChannelEnableMaskAvailable && AOPAudioDeviceHWManager::HW_AudioGetControlValue(self->mAOPAudioHWManagerPtr.__ptr_, 0, &v31);
      sub_1FF8("Device::isPropertySettable(kAOPAudioDriverEnabledChannelMask) --> %d\n", v6, v7, v8, v9, v10, v11, v12, HasPropertyEnableListeningOnGesture);
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (mSelector > 1635152994)
  {
    if (mSelector == 1635152995 || mSelector == 1635152997)
    {
      IsVoiceTriggerSupported = AOPAudioDeviceHWManager::HW_IsVoiceTriggerSupported(self->mAOPAudioHWManagerPtr.__ptr_);
LABEL_31:
      HasPropertyEnableListeningOnGesture = IsVoiceTriggerSupported;
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (mSelector != 1634692199)
  {
    v16 = 1635152993;
    goto LABEL_29;
  }

  HasPropertyEnableListeningOnGesture = AOPAudioDeviceHWManager::HW_HasPropertyEnableListeningOnGesture(self->mAOPAudioHWManagerPtr.__ptr_);
  sub_1FF8("Device::isPropertySettable(kAOPAudioDevicePropertyEnableListeningOnGesture) --> %d\n", v20, v21, v22, v23, v24, v25, v26, HasPropertyEnableListeningOnGesture);
LABEL_36:
  if (v13)
  {
    (*(*ptr + 24))(ptr);
  }

  return HasPropertyEnableListeningOnGesture;
}

- (void)enableListening:(BOOL)listening
{
  listeningCopy = listening;
  mPastDataListeningEnabled = self->mPastDataListeningEnabled;
  kdebug_trace();
  if (self->mPastDataListeningEnabled || !listeningCopy)
  {
    if (self->mPastDataListeningEnabled && !listeningCopy)
    {
      AOPAudioDeviceHWManager::HW_DisableListening(self->mAOPAudioHWManagerPtr.__ptr_);
      sub_1FF8("Device::enableListening, inEanble=%d, HW_DisableListening()", v7, v8, v9, v10, v11, v12, v13, 0);
    }
  }

  else
  {
    AOPAudioDeviceHWManager::HW_EnableListening(self->mAOPAudioHWManagerPtr.__ptr_);
    sub_1FF8("Device::enableListening, inEanble=%d, HW_EnableListening()", v14, v15, v16, v17, v18, v19, v20, 1);
  }

  self->mPastDataListeningEnabled = listeningCopy;

  kdebug_trace();
}

- (__CFDictionary)voiceTriggerGetData
{
  v24 = 0;
  AOPAudioDeviceHWManager::HW_GetVoiceTriggerData(self->mAOPAudioHWManagerPtr.__ptr_, &outputStruct);
  v22 = 0;
  v23.var0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *&v23.var1 = 256;
  v20 = 0;
  v21 = 0;
  AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(self->mAOPAudioHWManagerPtr.__ptr_, &v22, &v24, &v21, &v20);
  v26 -= v24;
  CACFDictionary::AddUInt64(&v23, @"trigger-time", outputStruct);
  CACFDictionary::AddUInt64(&v23, @"trigger-sample-frame-time", v26);
  CACFDictionary::AddUInt32(&v23, @"trigger-length", v27);
  CACFDictionary::AddUInt32(&v23, @"trigger-type", 0);
  CACFDictionary::AddUInt32(&v23, @"trigger-woke-ap", v28 == 1651470949);
  sub_1FF8("AudioDevice::voiceTriggerGetData() data: {ts %lld, st %llu, cnt %u, woke %d}, st delta %lld\n", v3, v4, v5, v6, v7, v8, v9, outputStruct);
  v17 = CFDataCreate(kCFAllocatorDefault, length_4, length);
  if (v17)
  {
    CACFDictionary::AddData(&v23, @"trigger-config-blob", v17);
    CFRelease(v17);
  }

  else
  {
    sub_8C70("Device::voiceTriggerGetData failed to allocate CFDataRef for the VT config blob {%p, %u bytes}\n", v10, v11, v12, v13, v14, v15, v16, length_4);
  }

  var0 = v23.var0;
  sub_1FB8(&v23);
  return var0;
}

- (unsigned)readAvailablePastData
{
  ptr = self->mIOMutexPtr.__ptr_;
  v15[1] = ptr;
  v4 = (*(*ptr + 16))(ptr, a2);
  v5 = v4;
  v16 = v4;
  if (!self->mStartCount && !self->mPastDataListeningEnabled)
  {
    v10 = 0;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v6 = self->mAOPAudioHWManagerPtr.__ptr_;
  v7 = *(v6 + 16);
  getBytesPerPacket = [(AppleAOPAudioStream *)self->_halInputAudioStream getBytesPerPacket];
  v9 = *(v6 + 17);
  v14 = 0;
  v15[0] = 0;
  v12 = 0;
  v13 = 0;
  AOPAudioDeviceHWManager::HW_ReadIOTimeStampStatusBuffer(self->mAOPAudioHWManagerPtr.__ptr_, v15, &v14, &v13, &v12);
  if (v13 - v15[0] >= v7 / getBytesPerPacket - v9)
  {
    v10 = v7 / getBytesPerPacket - v9;
  }

  else
  {
    v10 = v13 - LODWORD(v15[0]);
  }

  if (v5)
  {
LABEL_7:
    (*(*ptr + 24))(ptr);
  }

  return v10;
}

- (basic_string<char,)getDiagonsticData
{
  v2 = v1;
  sub_B67C(&v57);
  sub_C0F4(&v57, "AppleAOPAudioDevice[", 20);
  v3 = std::ostream::operator<<();
  sub_C0F4(v3, "] = \n", 5);
  v4 = sub_C0F4(&v57, "DeviceName:                             ", 40);
  deviceName = [v2 deviceName];
  uTF8String = [deviceName UTF8String];
  v7 = strlen(uTF8String);
  v8 = sub_C0F4(v4, uTF8String, v7);
  sub_C0F4(v8, "\n", 1);

  v9 = sub_C0F4(&v57, "DeviceUID:                              ", 40);
  deviceUID = [v2 deviceUID];
  uTF8String2 = [deviceUID UTF8String];
  v12 = strlen(uTF8String2);
  v13 = sub_C0F4(v9, uTF8String2, v12);
  sub_C0F4(v13, "\n", 1);

  v14 = sub_C0F4(&v57, "ModelUID:                               ", 40);
  modelUID = [v2 modelUID];
  uTF8String3 = [modelUID UTF8String];
  v17 = strlen(uTF8String3);
  v18 = sub_C0F4(v14, uTF8String3, v17);
  sub_C0F4(v18, "\n", 1);

  v19 = sub_C0F4(&v57, "ManufacturerName:                       ", 40);
  manufacturerName = [v2 manufacturerName];
  uTF8String4 = [manufacturerName UTF8String];
  v22 = strlen(uTF8String4);
  v23 = sub_C0F4(v19, uTF8String4, v22);
  sub_C0F4(v23, "\n", 1);

  v24 = sub_C0F4(&v57, "ModelName:                              ", 40);
  modelName = [v2 modelName];
  uTF8String5 = [modelName UTF8String];
  v27 = strlen(uTF8String5);
  v28 = sub_C0F4(v24, uTF8String5, v27);
  sub_C0F4(v28, "\n", 1);

  sub_C0F4(&v57, "StartCount:                             ", 40);
  [v2 getStartCount];
  v29 = std::ostream::operator<<();
  sub_C0F4(v29, "\n", 1);
  v30 = sub_C0F4(&v57, "HALsAudioStreamDescription:           \n", 39);
  v31 = *(v2 + 8);
  if (v31)
  {
    [v31 dumpToString];
    v32 = HIBYTE(v56);
    v34 = __p;
    v33 = v55;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    __p = 0;
    v55 = 0;
    v56 = 0;
  }

  if ((v32 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v34;
  }

  if ((v32 & 0x80u) == 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = v33;
  }

  v37 = sub_C0F4(v30, p_p, v36);
  sub_C0F4(v37, "\n", 1);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  v38 = sub_C0F4(&v57, "AOPInputAudioStreamDescription:       \n", 39);
  v39 = *(v2 + 16);
  if (v39)
  {
    [v39 dumpToString];
    v40 = HIBYTE(v56);
    v42 = __p;
    v41 = v55;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    __p = 0;
    v55 = 0;
    v56 = 0;
  }

  if ((v40 & 0x80u) == 0)
  {
    v43 = &__p;
  }

  else
  {
    v43 = v42;
  }

  if ((v40 & 0x80u) == 0)
  {
    v44 = v40;
  }

  else
  {
    v44 = v41;
  }

  v45 = sub_C0F4(v38, v43, v44);
  sub_C0F4(v45, "\n", 1);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  sub_C0F4(&v57, "HALsAudioStreamIsActive:                ", 40);
  [*(v2 + 8) isActive];
  v46 = std::ostream::operator<<();
  sub_C0F4(v46, "\n", 1);
  sub_C0F4(&v57, "PastDataListeningEnabled:               ", 40);
  v47 = *(v2 + 72);
  v48 = std::ostream::operator<<();
  sub_C0F4(v48, "\n", 1);
  v49 = sub_C0F4(&v57, "AuxIOStatus:                          \n", 39);
  v50 = operator<<(v49, (v2 + 88));
  sub_C0F4(v50, "\n", 1);
  AOPAudioDeviceHWManager::HW_DumpDriverState(&__p, *(v2 + 24));
  if (v56 >= 0)
  {
    v51 = &__p;
  }

  else
  {
    v51 = __p;
  }

  if (v56 >= 0)
  {
    v52 = HIBYTE(v56);
  }

  else
  {
    v52 = v55;
  }

  sub_C0F4(&v57, v51, v52);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  if (v60 < 0)
  {
    operator delete(v59[7].__locale_);
  }

  std::locale::~locale(v59);
  std::ostream::~ostream();
  return std::ios::~ios();
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end