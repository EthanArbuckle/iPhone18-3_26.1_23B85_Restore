@interface PHASEGroupPreset
- (PHASEGroupPreset)init;
- (PHASEGroupPreset)initWithEngine:(PHASEEngine *)engine settings:(NSDictionary *)settings timeToTarget:(double)timeToTarget timeToReset:(double)timeToReset;
- (void)activate;
- (void)activateWithTimeToTargetOverride:(double)timeToTargetOverride;
- (void)activateWithTimeToTargetOverride:(uint64_t)a1;
- (void)deactivate;
- (void)deactivateWithTimeToResetOverride:(double)timeToResetOverride;
@end

@implementation PHASEGroupPreset

- (PHASEGroupPreset)init
{
  [(PHASEGroupPreset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEGroupPreset)initWithEngine:(PHASEEngine *)engine settings:(NSDictionary *)settings timeToTarget:(double)timeToTarget timeToReset:(double)timeToReset
{
  v10 = engine;
  v11 = settings;
  v16.receiver = self;
  v16.super_class = PHASEGroupPreset;
  v12 = [(PHASEGroupPreset *)&v16 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
    v14 = v12->_settings;
    v12->_settings = v13;

    v12->_timeToTarget = timeToReset;
    v12->_timeToReset = timeToTarget;
    objc_storeWeak(&v12->_engine, v10);
  }

  return v12;
}

- (void)activate
{

  JUMPOUT(0x23EE864A0);
}

- (void)activateWithTimeToTargetOverride:(double)timeToTargetOverride
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_engine);
    v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([v6 implementation] + 48), 10);

    v8 = self;
    v9 = **(v7 + 8);
    v17 = 0;
    v16 = 1;
    v10 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v9, 32, &v17, &v16);
    if (!v10)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v14 = **(v9 + 48);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "CommandQueue.hpp";
        v20 = 1024;
        v21 = 100;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v16)
    {
      v11 = **(v9 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v19 = "CommandQueue.hpp";
        v20 = 1024;
        v21 = 89;
        v22 = 2048;
        v23 = v17;
        v24 = 2048;
        v25 = 32;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v10 = &unk_284D36118;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    *(v10 + 24) = timeToTargetOverride;
    Phase::LockFreeQueueSPSC::CommitBytes(v9, 32);
    atomic_store(0, (v9 + 40));

    v12 = objc_loadWeakRetained(&self->_engine);
    [v12 setInternalActiveGroupMixerPreset:v8];
  }
}

- (void)deactivate
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_engine);
    v5 = [v4 activeGroupPreset];

    if (v5 == self)
    {
      v6 = objc_loadWeakRetained(&self->_engine);
      v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([v6 implementation] + 48), 10);

      v8 = **(v7 + 8);
      v16 = 0;
      v15 = 1;
      v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 16, &v16, &v15);
      if (!v9)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v13 = **(v8 + 48);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "CommandQueue.hpp";
          v19 = 1024;
          v20 = 100;
          _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v15)
      {
        v10 = **(v8 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v18 = "CommandQueue.hpp";
          v19 = 1024;
          v20 = 89;
          v21 = 2048;
          v22 = v16;
          v23 = 2048;
          v24 = 16;
          _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v9 = &unk_284D36140;
      v9[1] = v7;
      Phase::LockFreeQueueSPSC::CommitBytes(v8, 16);
      atomic_store(0, (v8 + 40));
      v11 = objc_loadWeakRetained(&self->_engine);
      [v11 setInternalActiveGroupMixerPreset:0];
    }
  }
}

- (void)deactivateWithTimeToResetOverride:(double)timeToResetOverride
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_engine);
    v7 = [v6 activeGroupPreset];

    if (v7 == self)
    {
      v8 = objc_loadWeakRetained(&self->_engine);
      v9 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([v8 implementation] + 48), 10);

      v10 = **(v9 + 8);
      v18 = 0;
      v17 = 1;
      v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 24, &v18, &v17);
      if (!v11)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v15 = **(v10 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "CommandQueue.hpp";
          v21 = 1024;
          v22 = 100;
          _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v17)
      {
        v12 = **(v10 + 48);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v20 = "CommandQueue.hpp";
          v21 = 1024;
          v22 = 89;
          v23 = 2048;
          v24 = v18;
          v25 = 2048;
          v26 = 24;
          _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v11 = &unk_284D36168;
      *(v11 + 8) = v9;
      *(v11 + 16) = timeToResetOverride;
      Phase::LockFreeQueueSPSC::CommitBytes(v10, 24);
      atomic_store(0, (v10 + 40));
      v13 = objc_loadWeakRetained(&self->_engine);
      [v13 setInternalActiveGroupMixerPreset:0];
    }
  }
}

- (void)activateWithTimeToTargetOverride:(uint64_t)a1
{

  JUMPOUT(0x23EE864A0);
}

@end