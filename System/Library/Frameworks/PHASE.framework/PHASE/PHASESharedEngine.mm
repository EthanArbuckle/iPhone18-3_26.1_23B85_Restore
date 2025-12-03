@interface PHASESharedEngine
- (PHASESharedEngine)initWithUpdateMode:(int64_t)mode error:(id *)error;
- (PHASESharedListener)sharedListener;
- (id)rootObjectForSessionUUID:(id)d error:(id *)error;
- (void)gatherSharedEntityDebugInformation:(id)information;
@end

@implementation PHASESharedEngine

- (PHASESharedEngine)initWithUpdateMode:(int64_t)mode error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v11.receiver = self;
  v11.super_class = PHASESharedEngine;
  v5 = [(PHASEEngine *)&v11 initWithUpdateMode:mode];
  v6 = *MEMORY[0x277CCA450];
  v18 = *MEMORY[0x277CCA450];
  v19[0] = @"PHASESharedEngine not available";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v8 = **(Phase::Logger::GetInstance(v7) + 448);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [(Phase::Logger *)v7 objectForKeyedSubscript:v6];
    *buf = 136315650;
    v13 = "PHASEEngine.mm";
    v14 = 1024;
    v15 = 1594;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v7];
  }

  return 0;
}

- (PHASESharedListener)sharedListener
{
  sharedListener = self->_sharedListener;
  if (!sharedListener)
  {
    v4 = [[PHASESharedListener alloc] initInternalWithEngine:self];
    v5 = self->_sharedListener;
    self->_sharedListener = v4;

    sharedListener = self->_sharedListener;
  }

  return sharedListener;
}

- (id)rootObjectForSessionUUID:(id)d error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (error)
  {
    *error = 0;
  }

  if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
  {
    dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
  }

  if (Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities)
  {
    sessionRootObjects = [(PHASEEngine *)self sessionRootObjects];
    v8 = [sessionRootObjects objectForKey:dCopy];

    if (!v8)
    {
      v8 = [[PHASESharedRoot alloc] initWithEngine:self sessionUUID:dCopy];
      sessionRootObjects2 = [(PHASEEngine *)self sessionRootObjects];
      [sessionRootObjects2 setObject:v8 forKey:dCopy];
    }
  }

  else
  {
    v10 = *MEMORY[0x277CCA450];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Insufficient permissions to access root object by UUID";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = **(Phase::Logger::GetInstance(v11) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(Phase::Logger *)v11 objectForKeyedSubscript:v10];
      v15 = 136315650;
      v16 = "PHASEEngine.mm";
      v17 = 1024;
      v18 = 1626;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", &v15, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    v8 = 0;
  }

  return v8;
}

- (void)gatherSharedEntityDebugInformation:(id)information
{
  informationCopy = information;
  implementation = [(PHASEEngine *)self implementation];
  (*(*implementation[61] + 80))(implementation[61], informationCopy);
}

@end