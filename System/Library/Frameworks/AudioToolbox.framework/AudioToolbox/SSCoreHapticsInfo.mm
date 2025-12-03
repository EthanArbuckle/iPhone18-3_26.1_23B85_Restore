@interface SSCoreHapticsInfo
+ (id)instance;
- (SSCoreHapticsInfo)init;
- (id)getPlayerForSSID:(unint64_t)d;
- (unint64_t)generateNewSSIDForPlayer:(id)player;
- (void)disposeSSID:(unint64_t)d;
- (void)registerSSID:(unint64_t)d withPlayer:(id)player;
- (void)unregisterSSID:(unint64_t)d;
@end

@implementation SSCoreHapticsInfo

- (void)disposeSSID:(unint64_t)d
{
  v14 = *MEMORY[0x1E69E9840];
  if (kSystemSoundClientLogSubsystem)
  {
    v5 = *kSystemSoundClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "SSCoreHapticsPlayer.mm";
    v10 = 1024;
    v11 = 105;
    v12 = 2048;
    dCopy = d;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d disposing SSID %ld and its SSCoreHapticsPlayer", &v8, 0x1Cu);
  }

LABEL_8:
  [(SSCoreHapticsInfo *)self unregisterSSID:d];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)getPlayerForSSID:(unint64_t)d
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3676;
  v18 = __Block_byref_object_dispose__3677;
  v19 = 0;
  fObj = self->_SSIDMapQueue.fObj.fObj;
  v6 = applesauce::dispatch::v1::queue::operator*(fObj);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SSCoreHapticsInfo_getPlayerForSSID___block_invoke;
  block[3] = &unk_1E7ECEA68;
  block[4] = self;
  block[5] = &v14;
  block[6] = d;
  dispatch_sync(v6, block);

  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
    goto LABEL_10;
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v9 = *kSystemSoundClientLogSubsystem;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v21 = "SSCoreHapticsPlayer.mm";
    v22 = 1024;
    v23 = 97;
    v24 = 2048;
    dCopy = d;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d No player associated with SSID %ld", buf, 0x1Cu);
  }

LABEL_10:
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

void __38__SSCoreHapticsInfo_getPlayerForSSID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v3 = [v2 objectForKey:?];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)generateNewSSIDForPlayer:(id)player
{
  v13 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  if (playerCopy)
  {
    v5 = [SSCoreHapticsInfo generateNewSSIDForPlayer:]::currentToken++;
    [(SSCoreHapticsInfo *)self registerSSID:v5 withPlayer:playerCopy];
  }

  else
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v5 = *kSystemSoundClientLogSubsystem;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "SSCoreHapticsPlayer.mm";
      v11 = 1024;
      v12 = 77;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d SSCoreHapticsPlayer invalid!", &v9, 0x12u);
    }

    v5 = 0;
  }

LABEL_10:

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)unregisterSSID:(unint64_t)d
{
  fObj = self->_SSIDMapQueue.fObj.fObj;
  v6 = applesauce::dispatch::v1::queue::operator*(fObj);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSCoreHapticsInfo_unregisterSSID___block_invoke;
  v7[3] = &unk_1E7ECF228;
  v7[4] = self;
  v7[5] = d;
  dispatch_barrier_async(v6, v7);
}

void __36__SSCoreHapticsInfo_unregisterSSID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v1 removeObjectForKey:?];
}

- (void)registerSSID:(unint64_t)d withPlayer:(id)player
{
  v23 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  if (kSystemSoundClientLogSubsystem)
  {
    v7 = *kSystemSoundClientLogSubsystem;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "SSCoreHapticsPlayer.mm";
    v17 = 1024;
    v18 = 61;
    v19 = 2048;
    dCopy = d;
    v21 = 2048;
    v22 = playerCopy;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d registering SSID %ld <-> SSCoreHapticsPlayer %p", buf, 0x26u);
  }

LABEL_8:
  fObj = self->_SSIDMapQueue.fObj.fObj;
  applesauce::dispatch::v1::queue::operator*(fObj);
  objc_claimAutoreleasedReturnValue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSCoreHapticsInfo_registerSSID_withPlayer___block_invoke;
  block[3] = &unk_1E7ECEA40;
  block[4] = self;
  v13 = playerCopy;
  dCopy2 = d;
  v10 = playerCopy;
  dispatch_barrier_async(fObj, block);

  v11 = *MEMORY[0x1E69E9840];
}

void __45__SSCoreHapticsInfo_registerSSID_withPlayer___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  [v2 setObject:v1 forKey:?];
}

- (SSCoreHapticsInfo)init
{
  v8.receiver = self;
  v8.super_class = SSCoreHapticsInfo;
  v2 = [(SSCoreHapticsInfo *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    SSIDToPlayerMap = v2->_SSIDToPlayerMap;
    v2->_SSIDToPlayerMap = dictionary;

    v5 = dispatch_queue_create("SSIDPlayerDictQueue", MEMORY[0x1E69E96A8]);
    fObj = v2->_SSIDMapQueue.fObj.fObj;
    v2->_SSIDMapQueue.fObj.fObj = v5;
  }

  return v2;
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SSCoreHapticsInfo_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[SSCoreHapticsInfo instance]::onceToken != -1)
  {
    dispatch_once(&+[SSCoreHapticsInfo instance]::onceToken, block);
  }

  v2 = +[SSCoreHapticsInfo instance]::inst;

  return v2;
}

uint64_t __29__SSCoreHapticsInfo_instance__block_invoke(uint64_t a1)
{
  +[SSCoreHapticsInfo instance]::inst = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end