@interface AVInternalDeviceList
- (AVInternalDeviceList)init;
- (id)changeListener;
- (id)deviceList;
- (unsigned)dataSourceControlID;
- (void)dealloc;
- (void)notifyDeviceListChanged;
- (void)setChangeListener:(id)listener;
@end

@implementation AVInternalDeviceList

- (unsigned)dataSourceControlID
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  deviceList = self->deviceList;
  v3 = [(NSMutableArray *)deviceList countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(deviceList);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        if ([v7 isBuiltInDevice])
        {
          getDataSourceControlID = [v7 getDataSourceControlID];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v12 = 136316162;
              v13 = v9;
              v14 = 2080;
              v15 = "[AVInternalDeviceList dataSourceControlID]";
              v16 = 1024;
              v17 = 574;
              v18 = 2112;
              deviceID = [v7 deviceID];
              v20 = 1024;
              v21 = getDataSourceControlID;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Built-in audio device[%@]'s data source control ID[%u]", &v12, 0x2Cu);
            }
          }

          return getDataSourceControlID;
        }
      }

      v4 = [(NSMutableArray *)deviceList countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (AVInternalDeviceList)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = AVInternalDeviceList;
  v2 = [(AVInternalDeviceList *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->changeListener = 0;
    v2->deviceList = +[AVInternalDeviceList newDeviceList];
    pthread_mutex_init(&v3->listLock, 0);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_mutex_destroy(&self->listLock);
  v3.receiver = self;
  v3.super_class = AVInternalDeviceList;
  [(AVInternalDeviceList *)&v3 dealloc];
}

- (void)notifyDeviceListChanged
{
  v4[5] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AVInternalDeviceList_notifyDeviceListChanged__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(global_queue, v4);
}

void __47__AVInternalDeviceList_notifyDeviceListChanged__block_invoke(uint64_t a1)
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = +[AVInternalDeviceList newDeviceList];
  pthread_mutex_lock((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    [*(v2 + 16) setArray:v5];
    v3 = *(*(a1 + 32) + 8);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AVInternalDeviceList_notifyDeviceListChanged__block_invoke_2;
    block[3] = &unk_1E85F4E98;
    block[4] = v5;
    block[5] = v3;
    dispatch_async(global_queue, block);
    pthread_mutex_unlock((*(a1 + 32) + 24));
  }

  else
  {
    pthread_mutex_unlock((v2 + 24));
  }
}

uint64_t __47__AVInternalDeviceList_notifyDeviceListChanged__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v2 = *(a1 + 32);
    v3 = v2 ? [objc_msgSend(v2 "description")] : "<nil>";
    asprintf(&__str, "Calling changeListener %s", v3);
    if (__str)
    {
      __lasts = 0;
      v4 = strtok_r(__str, "\n", &__lasts);
      v5 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v12 = v6;
            v13 = 2080;
            v14 = "[AVInternalDeviceList notifyDeviceListChanged]_block_invoke_2";
            v15 = 1024;
            v16 = 682;
            v17 = 2080;
            v18 = "";
            v19 = 2080;
            v20 = v4;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v4 = strtok_r(0, "\n", &__lasts);
      }

      while (v4);
      free(__str);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)deviceList
{
  pthread_mutex_lock(&self->listLock);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->deviceList];
  pthread_mutex_unlock(&self->listLock);
  return v3;
}

- (void)setChangeListener:(id)listener
{
  pthread_mutex_lock(&self->listLock);
  changeListener = self->changeListener;
  self->changeListener = [listener copy];
  pthread_mutex_unlock(&self->listLock);
}

- (id)changeListener
{
  pthread_mutex_lock(&self->listLock);
  changeListener = self->changeListener;
  pthread_mutex_unlock(&self->listLock);
  return changeListener;
}

@end