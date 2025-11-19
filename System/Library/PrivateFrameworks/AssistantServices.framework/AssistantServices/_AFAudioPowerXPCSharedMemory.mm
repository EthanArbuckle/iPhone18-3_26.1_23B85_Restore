@interface _AFAudioPowerXPCSharedMemory
- (_AFAudioPowerXPCSharedMemory)initWithXPCObject:(id)a3;
- (void)_destroyMapping;
- (void)dealloc;
@end

@implementation _AFAudioPowerXPCSharedMemory

- (void)_destroyMapping
{
  v13 = *MEMORY[0x1E69E9840];
  sharedRegion = self->_sharedRegion;
  if (sharedRegion)
  {
    mappedLength = self->_mappedLength;
    if (mappedLength)
    {
      v5 = munmap(sharedRegion, mappedLength);
      if (v5)
      {
        v6 = v5;
        v7 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315394;
          v10 = "[_AFAudioPowerXPCSharedMemory _destroyMapping]";
          v11 = 1024;
          v12 = v6;
          _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s %d", &v9, 0x12u);
        }
      }
    }
  }

  self->_mappedLength = 0;
  self->_sharedRegion = 0;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(_AFAudioPowerXPCSharedMemory *)self _destroyMapping];
  v3.receiver = self;
  v3.super_class = _AFAudioPowerXPCSharedMemory;
  [(_AFAudioPowerXPCSharedMemory *)&v3 dealloc];
}

- (_AFAudioPowerXPCSharedMemory)initWithXPCObject:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = _AFAudioPowerXPCSharedMemory;
  v6 = [(_AFAudioPowerXPCSharedMemory *)&v18 init];
  if (!v6)
  {
    goto LABEL_21;
  }

  if (v5)
  {
    if (MEMORY[0x193AFBC20](v5) != MEMORY[0x1E69E9F08])
    {
      v7 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "[_AFAudioPowerXPCSharedMemory initWithXPCObject:]";
        v8 = "%s Unexpectec XPC object type.";
LABEL_8:
        _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    objc_storeStrong(&v6->_xpcObject, a3);
    v9 = xpc_shmem_map(v5, &v6->_sharedRegion);
    v6->_mappedLength = v9;
    sharedRegion = v6->_sharedRegion;
    if (sharedRegion)
    {
      v11 = v9 > 7;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      mappedLength = v9;
      if (!sharedRegion)
      {
        v13 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v20 = "[_AFAudioPowerXPCSharedMemory initWithXPCObject:]";
          _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s Mapping failed due to nil shared region.", buf, 0xCu);
          mappedLength = v6->_mappedLength;
        }
      }

      if (mappedLength <= 7)
      {
        v14 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[_AFAudioPowerXPCSharedMemory initWithXPCObject:]";
          v21 = 2048;
          v22 = mappedLength;
          _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Mapping failed due to unexpected mapped length (mappedLength = %zd).", buf, 0x16u);
        }
      }

      [(_AFAudioPowerXPCSharedMemory *)v6 _destroyMapping];
      goto LABEL_20;
    }

LABEL_21:
    v15 = v6;
    goto LABEL_22;
  }

  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[_AFAudioPowerXPCSharedMemory initWithXPCObject:]";
    v8 = "%s XPC object is nil.";
    goto LABEL_8;
  }

LABEL_20:
  v15 = 0;
LABEL_22:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

@end