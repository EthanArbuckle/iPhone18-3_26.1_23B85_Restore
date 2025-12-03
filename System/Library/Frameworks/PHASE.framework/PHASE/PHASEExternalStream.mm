@interface PHASEExternalStream
- (PHASEExternalStream)init;
- (PHASEExternalStream)initWithEngine:(id)engine streamGroupUUID:(id)d streamUUID:(id)iD startsPaused:(BOOL)paused delegate:(id)delegate;
- (PHASEExternalStreamDelegate)delegate;
- (id)engine;
- (void)dealloc;
- (void)pause;
- (void)resume;
- (void)setPause:(BOOL)pause completion:(id)completion;
- (void)stopAndInvalidate;
@end

@implementation PHASEExternalStream

- (PHASEExternalStream)init
{
  [(PHASEExternalStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalStream)initWithEngine:(id)engine streamGroupUUID:(id)d streamUUID:(id)iD startsPaused:(BOOL)paused delegate:(id)delegate
{
  engineCopy = engine;
  dCopy = d;
  iDCopy = iD;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PHASEExternalStream;
  v15 = [(PHASEExternalStream *)&v21 init];
  if (v15)
  {
    v16 = [dCopy copy];
    streamGroupUUID = v15->_streamGroupUUID;
    v15->_streamGroupUUID = v16;

    v18 = [iDCopy copy];
    streamUUID = v15->_streamUUID;
    v15->_streamUUID = v18;

    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeWeak(&v15->_engine, engineCopy);
    atomic_store(0, &v15->_invalidated);
  }

  return v15;
}

- (void)dealloc
{
  [(PHASEExternalStream *)self stopAndInvalidate];
  v3.receiver = self;
  v3.super_class = PHASEExternalStream;
  [(PHASEExternalStream *)&v3 dealloc];
}

- (void)setPause:(BOOL)pause completion:(id)completion
{
  pauseCopy = pause;
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    implementation = [WeakRetained implementation];
    (*(**(implementation + 416) + 56))(*(implementation + 416), self->_streamGroupUUID, self->_streamUUID, pauseCopy, completionCopy);
  }

  else
  {
    v13 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"External stream %@ (%@) has nil engine", self->_streamGroupUUID, self->_streamUUID];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v11];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)pause
{
  v3 = self->_streamUUID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__PHASEExternalStream_pause__block_invoke;
  v5[3] = &unk_278B4F798;
  v6 = v3;
  v4 = v3;
  [(PHASEExternalStream *)self setPause:1 completion:v5];
}

void __28__PHASEExternalStream_pause__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = **(Phase::Logger::GetInstance(v3) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315906;
      v8 = "PHASEExternalStream.mm";
      v9 = 1024;
      v10 = 178;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to pause stream %@: %@", &v7, 0x26u);
    }
  }
}

- (void)resume
{
  v3 = self->_streamUUID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PHASEExternalStream_resume__block_invoke;
  v5[3] = &unk_278B4F798;
  v6 = v3;
  v4 = v3;
  [(PHASEExternalStream *)self setPause:0 completion:v5];
}

void __29__PHASEExternalStream_resume__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = **(Phase::Logger::GetInstance(v3) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315906;
      v8 = "PHASEExternalStream.mm";
      v9 = 1024;
      v10 = 190;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to resume stream %@: %@", &v7, 0x26u);
    }
  }
}

- (id)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)stopAndInvalidate
{
  if ((atomic_exchange(&self->_invalidated.__a_.__a_value, 1u) & 1) == 0)
  {
    engine = [(PHASEExternalStream *)self engine];
    if (engine)
    {
      v4 = self->_streamGroupUUID;
      v5 = self->_streamUUID;
      v6 = *([engine implementation] + 416);
      (*(*v6 + 56))(v6, v4, v5, 1, &__block_literal_global_4);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __40__PHASEExternalStream_stopAndInvalidate__block_invoke_2;
      v9[3] = &unk_278B4F7C0;
      v7 = v5;
      v10 = v7;
      v8 = v4;
      v11 = v8;
      (*(*v6 + 32))(v6, v8, v7, v9);
      (*(*v6 + 80))(v6, v7);
    }
  }
}

void __40__PHASEExternalStream_stopAndInvalidate__block_invoke_2(Phase::Logger *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = **(Phase::Logger::GetInstance(a1) + 448);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 4);
      v5 = *(a1 + 5);
      v6 = 136315906;
      v7 = "PHASEExternalStream.mm";
      v8 = 1024;
      v9 = 235;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to invalidate stream %@ in group %@", &v6, 0x26u);
    }
  }
}

- (PHASEExternalStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end