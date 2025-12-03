@interface AVAudioDeviceList
+ (id)deviceForDeviceID:(unsigned int)d;
+ (id)deviceForUID:(id)d;
- (AVAudioDeviceList)init;
- (id)devices;
- (id)inputDevices;
- (id)outputDevices;
- (void)dealloc;
@end

@implementation AVAudioDeviceList

+ (id)deviceForUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(AVAudioDeviceList);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  devices = [(AVAudioDeviceList *)v4 devices];
  v6 = [devices countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(devices);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "UID")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [devices countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

+ (id)deviceForDeviceID:(unsigned int)d
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(AVAudioDeviceList);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  devices = [(AVAudioDeviceList *)v4 devices];
  v6 = [devices countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(devices);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([objc_msgSend(v10 "deviceID")] == d)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [devices countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (AVAudioDeviceList)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVAudioDeviceList;
  v2 = [(AVAudioDeviceList *)&v4 init];
  if (v2)
  {
    v2->_internalList = objc_alloc_init(AVInternalDeviceList);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(AVInternalDeviceList *)self->_internalList cleanup];

  v3.receiver = self;
  v3.super_class = AVAudioDeviceList;
  [(AVAudioDeviceList *)&v3 dealloc];
}

- (id)devices
{
  v23 = *MEMORY[0x1E69E9840];
  deviceList = [(AVInternalDeviceList *)self->_internalList deviceList];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v4 = [-[AVAudioDeviceList description](self "description")];
    v5 = deviceList ? [objc_msgSend(deviceList "description")] : "<nil>";
    asprintf(&__str, "self=%s devices=%s", v4, v5);
    if (__str)
    {
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v14 = v8;
            v15 = 2080;
            v16 = "[AVAudioDeviceList devices]";
            v17 = 1024;
            v18 = 824;
            v19 = 2080;
            v20 = "AVAudioDeviceList-devices";
            v21 = 2080;
            v22 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
    }
  }

  return deviceList;
}

- (id)inputDevices
{
  v24 = *MEMORY[0x1E69E9840];
  deviceList = [(AVInternalDeviceList *)self->_internalList deviceList];
  v4 = [deviceList objectsAtIndexes:{objc_msgSend(deviceList, "indexesOfObjectsPassingTest:", &__block_literal_global_62)}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v5 = [-[AVAudioDeviceList description](self "description")];
    v6 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
    asprintf(&__str, "self=%s inputDevices=%s", v5, v6);
    if (__str)
    {
      __lasts = 0;
      v7 = strtok_r(__str, "\n", &__lasts);
      v8 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVAudioDeviceList inputDevices]";
            v18 = 1024;
            v19 = 842;
            v20 = 2080;
            v21 = "AVAudioDeviceList-inputDevices";
            v22 = 2080;
            v23 = v7;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v7 = strtok_r(0, "\n", &__lasts);
      }

      while (v7);
      free(__str);
    }
  }

  return v4;
}

uint64_t __33__AVAudioDeviceList_inputDevices__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 inputAvailable];
  if (v3)
  {
    v4 = [a2 isValidInputDevice];
  }

  else
  {
    v4 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316418;
      v9 = v5;
      v10 = 2080;
      v11 = "[AVAudioDeviceList inputDevices]_block_invoke";
      v12 = 1024;
      v13 = 837;
      v14 = 2048;
      v15 = a2;
      v16 = 1024;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audioDevice=%p isInputAvailable=%{BOOL}d isValidInputDevice=%{BOOL}d", &v8, 0x32u);
    }
  }

  return v4;
}

- (id)outputDevices
{
  v24 = *MEMORY[0x1E69E9840];
  deviceList = [(AVInternalDeviceList *)self->_internalList deviceList];
  v4 = [deviceList objectsAtIndexes:{objc_msgSend(deviceList, "indexesOfObjectsPassingTest:", &__block_literal_global_110)}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v5 = [-[AVAudioDeviceList description](self "description")];
    v6 = v4 ? [objc_msgSend(v4 "description")] : "<nil>";
    asprintf(&__str, "self=%s outputDevices=%s", v5, v6);
    if (__str)
    {
      __lasts = 0;
      v7 = strtok_r(__str, "\n", &__lasts);
      v8 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v15 = v9;
            v16 = 2080;
            v17 = "[AVAudioDeviceList outputDevices]";
            v18 = 1024;
            v19 = 856;
            v20 = 2080;
            v21 = "AVAudioDeviceList-outputDevices";
            v22 = 2080;
            v23 = v7;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v7 = strtok_r(0, "\n", &__lasts);
      }

      while (v7);
      free(__str);
    }
  }

  return v4;
}

uint64_t __34__AVAudioDeviceList_outputDevices__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 outputAvailable];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "[AVAudioDeviceList outputDevices]_block_invoke";
      v11 = 1024;
      v12 = 851;
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audioDevice=%p outputAvailable=%{BOOL}d", &v7, 0x2Cu);
    }
  }

  return v3;
}

@end