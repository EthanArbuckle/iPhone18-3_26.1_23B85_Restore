@interface PHASEXPCService
+ (id)sharedInstance;
+ (id)sharedInstanceWithPlatform:(id)platform;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PHASEXPCService)init;
- (PHASEXPCService)initWithXPCListener:(id)listener;
- (unint64_t)newConnectionUID;
- (void)resumeListener;
@end

@implementation PHASEXPCService

+ (id)sharedInstance
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sPhaseService;
  if (!sPhaseService)
  {
    v3 = [PHASEXPCService alloc];
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    v5 = [(PHASEXPCService *)v3 initWithXPCListener:anonymousListener];
    v6 = sPhaseService;
    sPhaseService = v5;

    v8 = **(Phase::Logger::GetInstance(v7) + 864);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "PHASEXPCService.mm";
      v12 = 1024;
      v13 = 57;
      v14 = 2048;
      v15 = sPhaseService;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d xpcserver: created service@%p with anonymous listener", &v10, 0x1Cu);
    }

    gInProcessServer = 1;
    v2 = sPhaseService;
  }

  return v2;
}

+ (id)sharedInstanceWithPlatform:(id)platform
{
  v22 = *MEMORY[0x277D85DE8];
  platformCopy = platform;
  v5 = sPhaseService;
  if (sPhaseService || (+[PHASEXPCService sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = sPhaseService, sPhaseService = v6, v7, (v5 = sPhaseService) != 0))
  {
    objc_storeStrong((v5 + 32), platform);
    v10 = **(Phase::Logger::GetInstance(v9) + 864);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = "PHASEXPCService.mm";
      v16 = 1024;
      v17 = 104;
      v18 = 2048;
      v19 = sPhaseService;
      v20 = 2048;
      v21 = platformCopy;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d xpcserver: set service@%p with platform@%p", &v14, 0x26u);
    }

    v11 = sPhaseService;
  }

  else
  {
    v13 = **(Phase::Logger::GetInstance(v8) + 864);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "PHASEXPCService.mm";
      v16 = 1024;
      v17 = 90;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d xpcserver: Error creating service!", &v14, 0x12u);
    }

    v11 = 0;
  }

  return v11;
}

- (PHASEXPCService)init
{
  [(PHASEXPCService *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEXPCService)initWithXPCListener:(id)listener
{
  listenerCopy = listener;
  if (!listenerCopy)
  {
    std::terminate();
  }

  v6 = listenerCopy;
  v12.receiver = self;
  v12.super_class = PHASEXPCService;
  v7 = [(PHASEXPCService *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_connectionUIDGenerator = 1;
    ihdYoUjk3kGK = getpid();
    platform = v8->_platform;
    v8->_platform = 0;

    objc_storeStrong(&v8->_mainListener, listener);
    [(NSXPCListener *)v8->_mainListener setDelegate:v8];
    v10 = v8;
  }

  return v8;
}

- (void)resumeListener
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(self) + 864);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315906;
    v5 = "PHASEXPCService.mm";
    v6 = 1024;
    v7 = 147;
    v8 = 2048;
    selfCopy = self;
    v10 = 1024;
    v11 = ihdYoUjk3kGK;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d xpcserver: service@%p (server pid %d) - resuming listener", &v4, 0x22u);
  }

  [(NSXPCListener *)self->_mainListener resume];
}

- (unint64_t)newConnectionUID
{
  connectionUIDGenerator = self->_connectionUIDGenerator;
  self->_connectionUIDGenerator = connectionUIDGenerator + 1;
  return connectionUIDGenerator;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = **(Phase::Logger::GetInstance(self) + 864);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "PHASEXPCService.mm";
    v8 = 1024;
    v9 = 271;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: not setup to accept any connection to PhaseXPCService!", &v6, 0x12u);
  }

  return 0;
}

@end