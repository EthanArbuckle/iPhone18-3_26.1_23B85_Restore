@interface AVOutputContextMonitor
- (AVOutputContextMonitor)initWithSessionCore:(weak_ptr<avas:(id)a4 :client::SessionCore>)a3 routingContextUID:;
- (id).cxx_construct;
- (void)dealloc;
- (void)handleAVOutputContextOutputDeviceChange:(id)a3;
- (void)handleAVOutputContextOutputDevicesChange:(id)a3;
@end

@implementation AVOutputContextMonitor

- (AVOutputContextMonitor)initWithSessionCore:(weak_ptr<avas:(id)a4 :client::SessionCore>)a3 routingContextUID:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3.__cntrl_;
  v6 = v5;
  if (!v5)
  {
    v13 = *avas::client::gSessionClientLog(0);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315394;
    v20 = "AVOutputContextMonitor.mm";
    v21 = 1024;
    v22 = 24;
    v14 = "%25s:%-5d Error - routingContextUID is nil";
LABEL_11:
    _os_log_impl(&dword_1AC8A4000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    goto LABEL_12;
  }

  {
    if (v5)
    {
      avas::ClientSideCachingEnabled(void)::enabled = _os_feature_enabled_impl();
    }
  }

  if ((avas::ClientSideCachingEnabled(void)::enabled & 1) == 0)
  {
    v13 = *avas::client::gSessionClientLog(v5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315394;
    v20 = "AVOutputContextMonitor.mm";
    v21 = 1024;
    v22 = 28;
    v14 = "%25s:%-5d Error - client-side caching is disabled";
    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = AVOutputContextMonitor;
  v7 = [(AVOutputContextMonitor *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v9 = [*(AVFSoftLink::instance(v7) + 16) outputContextForID:v6];
    mAVOutputContext = v8->mAVOutputContext;
    v8->mAVOutputContext = v9;

    if (v8->mAVOutputContext)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:v8 selector:sel_handleAVOutputContextOutputDeviceChange_ name:@"AVOutputContextOutputDeviceDidChangeNotification" object:v8->mAVOutputContext];

      self = [MEMORY[0x1E696AD88] defaultCenter];
      [(AVOutputContextMonitor *)self addObserver:v8 selector:sel_handleAVOutputContextOutputDevicesChange_ name:@"AVOutputContextOutputDevicesDidChangeNotification" object:v8->mAVOutputContext];
LABEL_13:

      goto LABEL_14;
    }

    v17 = *avas::client::gSessionClientLog(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVOutputContextMonitor.mm";
      v21 = 1024;
      v22 = 38;
      _os_log_impl(&dword_1AC8A4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error in creating AVOutputContext", buf, 0x12u);
    }

    self = v8;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"AVOutputContextOutputDevicesDidChangeNotification" object:self->mAVOutputContext];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"AVOutputContextOutputDeviceDidChangeNotification" object:self->mAVOutputContext];

  v5.receiver = self;
  v5.super_class = AVOutputContextMonitor;
  [(AVOutputContextMonitor *)&v5 dealloc];
}

- (void)handleAVOutputContextOutputDeviceChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  cntrl = self->mSessionCore.__cntrl_;
  if (cntrl)
  {
    cntrl = std::__shared_weak_count::lock(cntrl);
    v6 = cntrl;
    if (cntrl)
    {
      ptr = self->mSessionCore.__ptr_;
      if (ptr)
      {
        v8 = *avas::client::gSessionClientLog(cntrl);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v13 = 136315650;
          v14 = "AVOutputContextMonitor.mm";
          v15 = 1024;
          v16 = 78;
          v17 = 1024;
          v18 = avas::client::SessionCore::sessionID(ptr);
          _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Received AVOutputContextOutputDeviceChange for session 0x%x", &v13, 0x18u);
        }

        v9 = *(ptr + 12);
        WeakRetained = objc_loadWeakRetained(ptr + 3);
        avas::client::CacheManager::refreshCachedProperties(v9, WeakRetained);

LABEL_11:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *avas::client::gSessionClientLog(cntrl);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "AVOutputContextMonitor.mm";
    v15 = 1024;
    v16 = 75;
    _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Received AVOutputContextOutputDeviceChange but session expired", &v13, 0x12u);
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleAVOutputContextOutputDevicesChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  cntrl = self->mSessionCore.__cntrl_;
  if (cntrl)
  {
    cntrl = std::__shared_weak_count::lock(cntrl);
    v6 = cntrl;
    if (cntrl)
    {
      ptr = self->mSessionCore.__ptr_;
      if (ptr)
      {
        v8 = *avas::client::gSessionClientLog(cntrl);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v13 = 136315650;
          v14 = "AVOutputContextMonitor.mm";
          v15 = 1024;
          v16 = 92;
          v17 = 1024;
          v18 = avas::client::SessionCore::sessionID(ptr);
          _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Received AVOutputContextOutputDevicesChange for session 0x%x", &v13, 0x18u);
        }

        v9 = *(ptr + 12);
        WeakRetained = objc_loadWeakRetained(ptr + 3);
        avas::client::CacheManager::refreshCachedProperties(v9, WeakRetained);

LABEL_11:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *avas::client::gSessionClientLog(cntrl);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "AVOutputContextMonitor.mm";
    v15 = 1024;
    v16 = 87;
    _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Received AVOutputContextOutputDevicesChange but session expired", &v13, 0x12u);
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end