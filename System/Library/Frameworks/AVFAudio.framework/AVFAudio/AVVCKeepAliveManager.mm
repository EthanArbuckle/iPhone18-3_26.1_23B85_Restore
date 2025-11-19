@interface AVVCKeepAliveManager
+ (id)sharedManager;
- (AVVCKeepAliveManager)init;
- (void)createWithCompletion:(id)a3;
- (void)dealloc;
- (void)destroyWithCompletion:(id)a3;
- (void)startWithCompletion:(id)a3;
- (void)stopWithCompletion:(id)a3;
@end

@implementation AVVCKeepAliveManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AVVCKeepAliveManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[AVVCKeepAliveManager sharedManager]::onceToken != -1)
  {
    dispatch_once(&+[AVVCKeepAliveManager sharedManager]::onceToken, block);
  }

  v2 = sSharedManager;

  return v2;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    (*(impl->var0 + 5))(impl, a2);
  }

  mKeepAliveDispatchQueue = self->mKeepAliveDispatchQueue;
  self->mKeepAliveDispatchQueue = 0;

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "AVVCKeepAliveManager.mm";
    v11 = 1024;
    v12 = 147;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dealloced AVVCKeepAliveManager", buf, 0x12u);
  }

LABEL_10:
  v8.receiver = self;
  v8.super_class = AVVCKeepAliveManager;
  [(AVVCKeepAliveManager *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)destroyWithCompletion:(id)a3
{
  v6 = a3;
  v4 = (*(self->_impl->var0 + 3))(self->_impl);
  if (v6)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
    v6[2](v6, v5);
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)stopWithCompletion:(id)a3
{
  v6 = a3;
  v4 = (*(self->_impl->var0 + 2))(self->_impl);
  if (v6)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
    v6[2](v6, v5);
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)startWithCompletion:(id)a3
{
  v4 = a3;
  impl = self->_impl;
  mKeepAliveDispatchQueue = self->mKeepAliveDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AVVCKeepAliveManager_startWithCompletion___block_invoke;
  v8[3] = &unk_1E7EF6590;
  v9 = v4;
  v10 = impl;
  v7 = v4;
  dispatch_async(mKeepAliveDispatchQueue, v8);
}

void __44__AVVCKeepAliveManager_startWithCompletion___block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 8))(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
    (*(v3 + 16))(v3);
  }
}

- (void)createWithCompletion:(id)a3
{
  v6 = a3;
  v4 = (*self->_impl->var0)(self->_impl);
  if (v6)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
    v6[2](v6, v5);
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (AVVCKeepAliveManager)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVVCKeepAliveManager;
  v2 = [(AVVCKeepAliveManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_impl = 0;
    if (GetImplType(void)::onceToken != -1)
    {
      dispatch_once(&GetImplType(void)::onceToken, &__block_literal_global_6081);
    }

    if (!GetImplType(void)::type)
    {
      operator new();
    }

    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("KeepAliveDispatchQueue", v4);
    mKeepAliveDispatchQueue = v3->mKeepAliveDispatchQueue;
    v3->mKeepAliveDispatchQueue = v5;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

void __37__AVVCKeepAliveManager_sharedManager__block_invoke(Class *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PlatformUtilities_iOS::GetProductType(a1) - 108;
  v3 = (v2 < 0x11) & (0x18003u >> v2);
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (((v3 | isDarwinOSProduct(void)::isDarwinOS) & 1) == 0)
  {
    v6 = objc_alloc_init(a1[4]);
    v7 = sSharedManager;
    sSharedManager = v6;

    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v14 = 136315650;
    v15 = "AVVCKeepAliveManager.mm";
    v16 = 1024;
    v17 = 101;
    v18 = 2048;
    v19 = sSharedManager;
    v9 = "%25s:%-5d Created AVVCKeepAliveManager (%p)";
    v10 = v5;
    v11 = 28;
    goto LABEL_16;
  }

  v4 = sSharedManager;
  sSharedManager = 0;

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "AVVCKeepAliveManager.mm";
    v16 = 1024;
    v17 = 105;
    v9 = "%25s:%-5d AVVCKeepAliveManager not supported on this device";
    v10 = v5;
    v11 = 18;
LABEL_16:
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
  }

LABEL_17:

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
}

@end