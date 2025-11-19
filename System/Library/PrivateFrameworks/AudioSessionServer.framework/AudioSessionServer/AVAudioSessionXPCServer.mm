@interface AVAudioSessionXPCServer
- (AVAudioSessionXPCServer)init;
- (AVAudioSessionXPCServer)initWithDelegate:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id).cxx_construct;
- (void)dealloc;
- (void)init2;
- (void)removeConnection:(id)a3;
@end

@implementation AVAudioSessionXPCServer

- (void)init2
{
  if (!self->_listener)
  {
    [AVAudioSessionXPCServer init2];
  }

  v3 = objc_opt_new();
  connections = self->_connections;
  self->_connections = v3;

  v5 = sessionManagerXPCInterface();
  exportedInterface = self->_exportedInterface;
  self->_exportedInterface = v5;

  v7 = sessionManagerXPCCallbackInterface();
  callbackInterface = self->_callbackInterface;
  self->_callbackInterface = v7;

  listener = self->_listener;

  [(NSXPCListener *)listener setDelegate:self];
}

- (AVAudioSessionXPCServer)init
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *avas::server::gSessionServerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioSessionXPCServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 295;
    _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server starting", buf, 0x12u);
  }

  v19.receiver = self;
  v19.super_class = AVAudioSessionXPCServer;
  v4 = [(AVAudioSessionXPCServer *)&v19 init];
  if (v4)
  {
    avas::WorkloopPool::Create(0x14);
    v5 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v6 = *(v4 + 7);
    *(v4 + 3) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.audio.AudioSession"];
    v8 = *(v4 + 9);
    *(v4 + 9) = v7;

    v9 = [*(v4 + 9) _queue];
    label = dispatch_queue_get_label(v9);
    std::string::basic_string[abi:ne200100]<0>(buf, label);
    avas::CreateFixedPriorityDispatchQueue(buf, QOS_CLASS_USER_INTERACTIVE, &v18);
    if (v21 < 0)
    {
      operator delete(*buf);
    }

    [*(v4 + 9) _setQueue:v18];
    v11 = [*(v4 + 9) endpoint];
    avas::SetServerXPCListenerEndpoint(v11, v12);

    objc_initWeak(buf, v4);
    v16 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v17, buf);
    avas::SetInProcessIONodeSessionServerFactory();
    *(v4 + 40) = 1;
    [v4 init2];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    v13 = v18;
    v18 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

AVAudioIONodeSessionDirectServer *__31__AVAudioSessionXPCServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = avas::server::LegacySessionManager::Instance(WeakRetained);
  if (WeakRetained)
  {
    v3 = [[AVAudioIONodeSessionDirectServer alloc] initWithSessionManager:v2 serverDelegate:*(WeakRetained + 8)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AVAudioSessionXPCServer)initWithDelegate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *avas::server::gSessionServerLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioSessionXPCServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 325;
    _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server starting", buf, 0x12u);
  }

  v22.receiver = self;
  v22.super_class = AVAudioSessionXPCServer;
  v7 = [(AVAudioSessionXPCServer *)&v22 init];
  if (v7)
  {
    avas::WorkloopPool::Create(0x14);
    v8 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v9 = *(v7 + 7);
    *(v7 + 3) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    objc_storeStrong(v7 + 8, a3);
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.audio.AudioSession"];
    v11 = *(v7 + 9);
    *(v7 + 9) = v10;

    v12 = [*(v7 + 9) _queue];
    label = dispatch_queue_get_label(v12);
    std::string::basic_string[abi:ne200100]<0>(buf, label);
    avas::CreateFixedPriorityDispatchQueue(buf, QOS_CLASS_USER_INTERACTIVE, &v21);
    if (v24 < 0)
    {
      operator delete(*buf);
    }

    [*(v7 + 9) _setQueue:v21];
    v14 = [*(v7 + 9) endpoint];
    avas::SetServerXPCListenerEndpoint(v14, v15);

    objc_initWeak(buf, v7);
    v19 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v20, buf);
    avas::SetInProcessIONodeSessionServerFactory();
    *(v7 + 40) = 1;
    [v7 init2];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
    v16 = v21;
    v21 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

AVAudioIONodeSessionDirectServer *__44__AVAudioSessionXPCServer_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = avas::server::LegacySessionManager::Instance(WeakRetained);
  if (WeakRetained)
  {
    v3 = [[AVAudioIONodeSessionDirectServer alloc] initWithSessionManager:v2 serverDelegate:*(WeakRetained + 8)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = self->_connections;
  objc_sync_enter(v3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 suspend];
        [v8 invalidate];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v5);
  }

  connections = self->_connections;
  self->_connections = 0;

  objc_sync_exit(v3);
  ptr = self->_deallocPromise.__ptr_;
  if (ptr)
  {
    std::promise<void>::set_value(ptr);
  }

  v11 = *avas::server::gSessionServerLog(ptr);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "AVAudioSessionXPCServer.mm";
    v20 = 1024;
    v21 = 371;
    v22 = 2048;
    v23 = self;
    _os_log_impl(&dword_241701000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server %p deallocated", buf, 0x1Cu);
  }

  v13.receiver = self;
  v13.super_class = AVAudioSessionXPCServer;
  [(AVAudioSessionXPCServer *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_needsDefaultWorldInit)
  {
    v9 = *avas::server::gSessionServerLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = "AVAudioSessionXPCServer.mm";
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = 377;
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Performing deferred initialization", buf, 0x12u);
    }

    self->_needsDefaultWorldInit = 0;
  }

  v10 = self->_connections;
  objc_sync_enter(v10);
  [(NSMutableArray *)self->_connections addObject:v8];
  objc_sync_exit(v10);

  [(avas::server *)v8 setExportedInterface:self->_exportedInterface];
  [(avas::server *)v8 setRemoteObjectInterface:self->_callbackInterface];
  v11 = [(avas::server *)v8 _queue];
  label = dispatch_queue_get_label(v11);
  std::string::basic_string[abi:ne200100]<0>(buf, label);
  avas::CreateFixedPriorityDispatchQueue(&buf[0].__r_.__value_.__l.__data_, QOS_CLASS_USER_INTERACTIVE, &v28);
  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  [(avas::server *)v8 _setQueue:v28];
  LODWORD(buf[0].__r_.__value_.__l.__data_) = 0;
  memset(&buf[0].__r_.__value_.__r.__words[1], 0, 40);
  LODWORD(buf[0].__r_.__value_.__l.__data_) = [(avas::server *)v8 processIdentifier];
  objc_storeStrong(&buf[0].__r_.__value_.__l.__size_, a4);
  v13 = [AVAudioSessionRemoteXPCClient alloc];
  data = buf[0].__r_.__value_.__l.__data_;
  v25 = buf[0].__r_.__value_.__l.__size_;
  objc_copyWeak(&v26, &buf[0].__r_.__value_.__r.__words[2]);
  if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, buf[1].__r_.__value_.__l.__data_, buf[1].__r_.__value_.__l.__size_);
  }

  else
  {
    __p = buf[1];
  }

  v14 = [(AVAudioSessionRemoteXPCClient *)v13 initWithServer:self process:&data delegate:self->_serverDelegate];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  objc_destroyWeak(&v26);

  objc_initWeak(&location, v14);
  objc_initWeak(&from, v8);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__AVAudioSessionXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v19[3] = &unk_278CEAA00;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v15 = MEMORY[0x245CEF0E0](v19);
  [(avas::server *)v8 setInterruptionHandler:v15];
  [(avas::server *)v8 setInvalidationHandler:v15];
  [(avas::server *)v8 setExportedObject:v14];
  [(avas::server *)v8 resume];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[1].__r_.__value_.__l.__data_);
  }

  objc_destroyWeak(&buf[0].__r_.__value_.__r.__words[2]);

  v16 = v28;
  v28 = 0;

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __62__AVAudioSessionXPCServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setExportedObject:0];
}

- (void)removeConnection:(id)a3
{
  obj = self->_connections;
  v5 = a3;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_connections removeObject:v5];

  objc_sync_exit(obj);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end