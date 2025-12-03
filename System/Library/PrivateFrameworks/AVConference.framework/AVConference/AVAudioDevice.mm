@interface AVAudioDevice
- (AVAudioDevice)initWithDeviceID:(id)d;
- (BOOL)copyStreamIDArray:(unsigned int *)array length:(unsigned int *)length;
- (BOOL)deviceHasNonTapStreamsInStreamList:(unsigned int *)list length:(unsigned int)length;
- (BOOL)hasRealInputStream;
- (BOOL)isAggregableDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSomethingConnectedToJack;
- (BOOL)isValidDevice;
- (BOOL)isValidInputDevice;
- (id)description;
- (void)createName;
- (void)createUID;
- (void)dealloc;
@end

@implementation AVAudioDevice

- (AVAudioDevice)initWithDeviceID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = AVAudioDevice;
  v4 = [(AVAudioDevice *)&v8 init];
  if (v4)
  {
    v4->_deviceID = [d copy];
    v4->_preferredDevice = [(AVAudioDevice *)v4 isBluetoothDevice];
    if (!v4->_deviceName)
    {
      [(AVAudioDevice *)v4 createName];
    }

    if (!v4->_UID)
    {
      [(AVAudioDevice *)v4 createUID];
    }
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVAudioDevice-initWithDeviceID");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVAudioDevice initWithDeviceID:]";
      v13 = 1024;
      v14 = 78;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      dCopy = d;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVAudioDevice-initWithDeviceID self=%@ initDeviceID=%@", buf, 0x30u);
    }
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVAudioDevice;
  [(AVAudioDevice *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: [%p] deviceName[%@] deviceID[%@] UID[%@] isPreferred[%d] _isLineIn[%d] inputAvailable[%d] outputAvailable[%d]", NSStringFromClass(v4), self, self->_deviceName, self->_deviceID, self->_UID, self->_preferredDevice, self->_isLineIn, self->_inputAvailable, self->_outputAvailable];
}

- (void)createName
{
  if (!self->_deviceName)
  {
    self->_deviceName = [(AVAudioDevice *)self newAudioObjectStringPropertyWithSelector:1819173229 scope:1735159650 element:0];
  }
}

- (void)createUID
{
  if (!self->_UID)
  {
    self->_UID = [(AVAudioDevice *)self newAudioObjectStringPropertyWithSelector:1969841184 scope:1735159650 element:0];
  }
}

- (BOOL)isValidDevice
{
  deviceName = self->_deviceName;
  if (deviceName)
  {
    LOBYTE(deviceName) = [(NSString *)deviceName rangeOfString:@"VPAUAggregateAudioDevice" options:8]== 0x7FFFFFFFFFFFFFFFLL;
  }

  return deviceName;
}

- (BOOL)copyStreamIDArray:(unsigned int *)array length:(unsigned int *)length
{
  selfCopy = self;
  LOBYTE(self) = 0;
  v44 = *MEMORY[0x1E69E9840];
  if (!array || !length)
  {
    return self;
  }

  unsignedIntegerValue = [(NSNumber *)selfCopy->_deviceID unsignedIntegerValue];
  *&inAddress.mSelector = 0x696E707473746D23;
  inAddress.mElement = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(unsignedIntegerValue, &inAddress, 0, 0, &outDataSize);
  v9 = outDataSize;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (PropertyDataSize)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      LODWORD(self) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!self)
      {
        return self;
      }

      *buf = 136316418;
      v33 = v12;
      v34 = 2080;
      v35 = "[AVAudioDevice copyStreamIDArray:length:]";
      v36 = 1024;
      v37 = 218;
      v38 = 2048;
      *v39 = unsignedIntegerValue;
      *&v39[8] = 1024;
      *&v39[10] = outDataSize;
      v40 = 1024;
      v41 = PropertyDataSize;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unable to get size for stream vector - deviceID=%lu, streamListDataSizeBytes=%u, status=%d", buf, 0x32u);
    }

LABEL_31:
    LOBYTE(self) = 0;
    return self;
  }

  if (ErrorLogLevelForModule >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v33 = v14;
        v34 = 2080;
        v35 = "[AVAudioDevice copyStreamIDArray:length:]";
        v36 = 1024;
        v37 = 221;
        v38 = 1024;
        *v39 = outDataSize;
        *&v39[4] = 2048;
        *&v39[6] = unsignedIntegerValue;
        v40 = 1024;
        v41 = 0;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AudioObjectGetPropertyDataSize for kAudioDevicePropertyStreams returned streamListDataSizeBytes=%u for deviceID=%lu with status=%d", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v33 = v14;
      v34 = 2080;
      v35 = "[AVAudioDevice copyStreamIDArray:length:]";
      v36 = 1024;
      v37 = 221;
      v38 = 1024;
      *v39 = outDataSize;
      *&v39[4] = 2048;
      *&v39[6] = unsignedIntegerValue;
      v40 = 1024;
      v41 = 0;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AudioObjectGetPropertyDataSize for kAudioDevicePropertyStreams returned streamListDataSizeBytes=%u for deviceID=%lu with status=%d", buf, 0x32u);
    }
  }

  v17 = outDataSize >> 2;
  v18 = malloc_type_calloc(v17, 4uLL, 0x100004052888210uLL);
  if (!v18)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      LODWORD(self) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!self)
      {
        return self;
      }

      [AVAudioDevice copyStreamIDArray:v26 length:v27];
    }

    goto LABEL_31;
  }

  v19 = v18;
  ioDataSize = outDataSize;
  PropertyData = AudioObjectGetPropertyData(unsignedIntegerValue, &inAddress, 0, 0, &ioDataSize, v18);
  if (PropertyData || outDataSize != ioDataSize)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v33 = v24;
        v34 = 2080;
        v35 = "[AVAudioDevice copyStreamIDArray:length:]";
        v36 = 1024;
        v37 = 233;
        v38 = 2048;
        *v39 = v19;
        *&v39[8] = 1024;
        *&v39[10] = PropertyData;
        v40 = 1024;
        v41 = outDataSize;
        v42 = 1024;
        v43 = ioDataSize;
        _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to get stream vector - streamList=%p, status=%d, expectedStreamListDataSizeBytes=%u, actualStreamListDataSizeBytes=%u", buf, 0x38u);
      }
    }

    free(v19);
    goto LABEL_31;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    v23 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v33 = v21;
        v34 = 2080;
        v35 = "[AVAudioDevice copyStreamIDArray:length:]";
        v36 = 1024;
        v37 = 237;
        v38 = 2048;
        *v39 = v19;
        *&v39[8] = 1024;
        *&v39[10] = outDataSize;
        v40 = 1024;
        v41 = v17;
        v42 = 1024;
        v43 = 0;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Returning streamList=%p with streamListDataSizeBytes=%u, streamListLength=%u, and status=%d", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v33 = v21;
      v34 = 2080;
      v35 = "[AVAudioDevice copyStreamIDArray:length:]";
      v36 = 1024;
      v37 = 237;
      v38 = 2048;
      *v39 = v19;
      *&v39[8] = 1024;
      *&v39[10] = outDataSize;
      v40 = 1024;
      v41 = v17;
      v42 = 1024;
      v43 = 0;
      _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Returning streamList=%p with streamListDataSizeBytes=%u, streamListLength=%u, and status=%d", buf, 0x38u);
    }
  }

  *array = v19;
  *length = v17;
  LOBYTE(self) = 1;
  return self;
}

- (BOOL)deviceHasNonTapStreamsInStreamList:(unsigned int *)list length:(unsigned int)length
{
  v42 = *MEMORY[0x1E69E9840];
  if (!list)
  {
    return 0;
  }

  *&inAddress.mSelector = 0x676C6F6274617073;
  inAddress.mElement = 0;
  outData = 0;
  if (!length)
  {
    v19 = 1;
LABEL_17:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        deviceName = self->_deviceName;
        deviceID = self->_deviceID;
        *buf = 136316930;
        v29 = v20;
        v30 = 2080;
        v31 = "[AVAudioDevice deviceHasNonTapStreamsInStreamList:length:]";
        v32 = 1024;
        v33 = 280;
        v34 = 1024;
        v35 = v19;
        v36 = 2112;
        v37 = deviceID;
        v38 = 2112;
        *v39 = deviceName;
        *&v39[8] = 1024;
        *v40 = length;
        *&v40[4] = 1024;
        v41 = outData;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d deviceHasOnlyTapStreamInputs=%{BOOL}d, _deviceId=%@, _deviceName [%@], streamListLength=%u, isTapStream=%u", buf, 0x42u);
      }
    }

    return 0;
  }

  listCopy = list;
  ioDataSize = 4;
  HasProperty = AudioObjectHasProperty(*list, &inAddress);
  if (HasProperty)
  {
    v8 = HasProperty;
    v9 = 1;
    v10 = 1;
    while (1)
    {
      PropertyData = AudioObjectGetPropertyData(*listCopy, &inAddress, 0, 0, &ioDataSize, &outData);
      if (PropertyData)
      {
        v12 = PropertyData;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = *listCopy;
            v16 = self->_deviceID;
            *buf = 136316930;
            v29 = v13;
            v30 = 2080;
            v31 = "[AVAudioDevice deviceHasNonTapStreamsInStreamList:length:]";
            v32 = 1024;
            v33 = 270;
            v34 = 1024;
            v35 = v15;
            v36 = 2112;
            v37 = v16;
            v38 = 1024;
            *v39 = v12;
            *&v39[4] = 1024;
            *&v39[6] = v9;
            *v40 = 1024;
            *&v40[2] = length;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unable to get kAudioStreamPropertyIsTapStream data from streamID=%u on _deviceID=%@, status=%d - array value i=%u out of total=%u", buf, 0x3Eu);
          }
        }
      }

      else
      {
        if (!outData)
        {
          return v10;
        }

        v8 = 1;
      }

      if (length == v9)
      {
        break;
      }

      v10 = v9 < length;
      ioDataSize = 4;
      v17 = listCopy[1];
      ++listCopy;
      v18 = AudioObjectHasProperty(v17, &inAddress);
      v8 = v18;
      ++v9;
      if (!v18)
      {
        return v10;
      }
    }

    v19 = v8;
    goto LABEL_17;
  }

  return 1;
}

- (BOOL)hasRealInputStream
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v5 = 0;
  v3 = 0;
  if ([(AVAudioDevice *)self copyStreamIDArray:v6 length:&v5])
  {
    v3 = [(AVAudioDevice *)self deviceHasNonTapStreamsInStreamList:v6[0] length:v5];
    free(v6[0]);
  }

  return v3;
}

- (BOOL)isAggregableDevice
{
  outData[1] = *MEMORY[0x1E69E9840];
  outData[0] = 0;
  AudioObjectGetPropertyData([(NSNumber *)self->_deviceID unsignedIntegerValue:0x676C6F626F706C67], &v4, 0, 0, &v5, outData);
  v2 = [outData[0] hasPrefix:@"com.apple.audio.CoreAudio"];

  return v2;
}

- (BOOL)isValidInputDevice
{
  v28 = *MEMORY[0x1E69E9840];
  hasRealInputStream = [(AVAudioDevice *)self hasRealInputStream];
  isAggregableDevice = [(AVAudioDevice *)self isAggregableDevice];
  isSomethingConnectedToJack = [(AVAudioDevice *)self isSomethingConnectedToJack];
  v6 = isSomethingConnectedToJack;
  v7 = 0;
  if (hasRealInputStream && isAggregableDevice)
  {
    v7 = !self->_isLineIn || isSomethingConnectedToJack;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      isLineIn = self->_isLineIn;
      v12 = 136316930;
      v13 = v8;
      v14 = 2080;
      v15 = "[AVAudioDevice isValidInputDevice]";
      v16 = 1024;
      v17 = 328;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = hasRealInputStream;
      v22 = 1024;
      v23 = isAggregableDevice;
      v24 = 1024;
      v25 = isLineIn;
      v26 = 1024;
      v27 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Input device is valid=%d. hasRealInputStream=%d, isAggregableDevice=%d, isLineIn=%d, isSomethingConnectedToJack=%d", &v12, 0x3Au);
    }
  }

  return v7;
}

- (BOOL)isSomethingConnectedToJack
{
  v25 = *MEMORY[0x1E69E9840];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = 0x696E70746A61636BLL;
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData([(NSNumber *)self->_deviceID unsignedIntValue], &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v4 = PropertyData;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = FourccToCStr(v4);
        deviceID = self->_deviceID;
        *buf = 136316418;
        v14 = v5;
        v15 = 2080;
        v16 = "[AVAudioDevice isSomethingConnectedToJack]";
        v17 = 1024;
        v18 = 338;
        v19 = 2080;
        v20 = v8;
        v21 = 1024;
        v22 = v4;
        v23 = 2112;
        v24 = deviceID;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioDeviceGetProperty failed for JackIsConnected error=%s [%d] deviceId=%@", buf, 0x36u);
      }
    }
  }

  return outData != 0;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  deviceID = self->_deviceID;
  deviceID = [equal deviceID];

  return [(NSNumber *)deviceID isEqualToNumber:deviceID];
}

- (void)copyStreamIDArray:(uint64_t)a1 length:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[AVAudioDevice copyStreamIDArray:length:]";
  v6 = 1024;
  v7 = 226;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d streamList calloc failed", &v2, 0x1Cu);
}

@end