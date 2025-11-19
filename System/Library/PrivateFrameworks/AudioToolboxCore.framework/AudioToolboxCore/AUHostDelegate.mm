@interface AUHostDelegate
- (AUAudioUnit)audioUnit;
- (AUHostDelegate)init;
- (void)propertiesChanged:(id)a3;
- (void)speechSynthesisMetadataAvailable:(id)a3 speechRequest:(id)a4;
- (void)syncParameter:(unint64_t)a3 value:(float)a4 extOriginator:(unint64_t)a5 hostTime:(unint64_t)a6 eventType:(unsigned int)a7;
@end

@implementation AUHostDelegate

- (AUAudioUnit)audioUnit
{
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);

  return WeakRetained;
}

- (void)syncParameter:(unint64_t)a3 value:(float)a4 extOriginator:(unint64_t)a5 hostTime:(unint64_t)a6 eventType:(unsigned int)a7
{
  mParameterQueue = self->mParameterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AUHostDelegate_syncParameter_value_extOriginator_hostTime_eventType___block_invoke;
  block[3] = &unk_1E72C0F30;
  block[4] = self;
  block[5] = a3;
  v15 = a4;
  block[6] = a5;
  block[7] = a6;
  v16 = a7;
  dispatch_async(mParameterQueue, block);
}

void __71__AUHostDelegate_syncParameter_value_extOriginator_hostTime_eventType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained parameterTree];
  LODWORD(v4) = *(a1 + 64);
  [v3 remoteSyncParameter:*(a1 + 40) value:*(a1 + 48) extOriginator:*(a1 + 56) hostTime:*(a1 + 68) eventType:v4];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
}

- (void)speechSynthesisMetadataAvailable:(id)a3 speechRequest:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
  v8 = [WeakRetained speechSynthesisOutputMetadataBlock];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_audioUnit);
    v10 = [v9 speechSynthesisOutputMetadataBlock];
    (v10)[2](v10, v11, v6);
  }
}

- (void)propertiesChanged:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_audioUnit);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_loadWeakRetained(&self->_audioUnit);
    [v7 propertiesChanged:v4];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_loadWeakRetained(&self->_audioUnit);
          [v13 willChangeValueForKey:{*(v12 + 8), v16}];

          v14 = objc_loadWeakRetained(&self->_audioUnit);
          [v14 didChangeValueForKey:*(v12 + 8)];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (AUHostDelegate)init
{
  v8.receiver = self;
  v8.super_class = AUHostDelegate;
  v2 = [(AUHostDelegate *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AUHostExtensionContextParameterSyncQueue", 0);
    mParameterQueue = v2->mParameterQueue;
    v2->mParameterQueue = v3;

    v5 = v2->mParameterQueue;
    v6 = dispatch_get_global_queue(25, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

@end