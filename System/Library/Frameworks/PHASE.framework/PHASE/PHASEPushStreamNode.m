@interface PHASEPushStreamNode
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer;
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(PHASEPushStreamBufferOptions)options;
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(PHASEPushStreamBufferOptions)options completionCallbackType:(PHASEPushStreamCompletionCallbackCondition)completionCallbackType completionHandler:(void *)completionHandler;
- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer completionCallbackType:(PHASEPushStreamCompletionCallbackCondition)completionCallbackType completionHandler:(void *)completionHandler;
- (void)scheduleBuffer:(id *)a1 atTime:options:completionCallbackType:completionHandler:;
- (void)scheduleBuffer:(uint64_t)a1;
- (void)scheduleBuffer:(uint64_t)a1 atTime:options:;
- (void)scheduleBuffer:(uint64_t)a1 completionCallbackType:completionHandler:;
@end

@implementation PHASEPushStreamNode

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = buffer;
  v5 = [(PHASEStreamNode *)self engine];
  v6 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v5 implementation] + 48), 7);

  v7 = [(PHASEStreamNode *)self actionTreeUniqueId];
  v9 = v8;
  v10 = [(PHASEStreamNode *)self nodeUID];
  v11 = v4;
  v12 = **(v6 + 8);
  v19 = 0;
  v18 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 48, &v19, &v18);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v16 = **(v12 + 48);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v18)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = 48;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v13 = &unk_284D364D0;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  Phase::LockFreeQueueSPSC::CommitBytes(v12, 48);
  atomic_store(0, (v12 + 40));
}

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer completionCallbackType:(PHASEPushStreamCompletionCallbackCondition)completionCallbackType completionHandler:(void *)completionHandler
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = buffer;
  v23 = completionHandler;
  v9 = [(PHASEStreamNode *)self engine];
  v10 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v9 implementation] + 48), 7);

  v11 = [(PHASEStreamNode *)self actionTreeUniqueId];
  v13 = v12;
  v14 = [(PHASEStreamNode *)self nodeUID];
  v15 = v8;
  v16 = _Block_copy(v23);
  v17 = **(v10 + 8);
  v25 = 0;
  v24 = 1;
  v18 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v17, 64, &v25, &v24);
  if (!v18)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v21 = **(v17 + 48);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "CommandQueue.hpp";
      v28 = 1024;
      v29 = 100;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v24)
  {
    v19 = **(v17 + 48);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v27 = "CommandQueue.hpp";
      v28 = 1024;
      v29 = 89;
      v30 = 2048;
      v31 = v25;
      v32 = 2048;
      v33 = 64;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v18 = &unk_284D364F8;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = completionCallbackType;
  v18[7] = v16;
  Phase::LockFreeQueueSPSC::CommitBytes(v17, 64);
  atomic_store(0, (v17 + 40));
}

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(PHASEPushStreamBufferOptions)options
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = buffer;
  v9 = when;
  v10 = [(PHASEStreamNode *)self engine];
  v11 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v10 implementation] + 48), 7);

  v12 = [(PHASEStreamNode *)self actionTreeUniqueId];
  v14 = v13;
  v15 = [(PHASEStreamNode *)self nodeUID];
  v16 = v8;
  v17 = v9;
  v18 = **(v11 + 8);
  v25 = 0;
  v24 = 1;
  v19 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v18, 64, &v25, &v24);
  if (!v19)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v22 = **(v18 + 48);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "CommandQueue.hpp";
      v28 = 1024;
      v29 = 100;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v24)
  {
    v20 = **(v18 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v27 = "CommandQueue.hpp";
      v28 = 1024;
      v29 = 89;
      v30 = 2048;
      v31 = v25;
      v32 = 2048;
      v33 = 64;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v19 = &unk_284D36520;
  v19[1] = v11;
  v19[2] = v12;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  v19[7] = options;
  Phase::LockFreeQueueSPSC::CommitBytes(v18, 64);
  atomic_store(0, (v18 + 40));
}

- (void)scheduleBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)when options:(PHASEPushStreamBufferOptions)options completionCallbackType:(PHASEPushStreamCompletionCallbackCondition)completionCallbackType completionHandler:(void *)completionHandler
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = buffer;
  v13 = when;
  v14 = completionHandler;
  v15 = [(PHASEStreamNode *)self engine];
  v16 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v15 implementation] + 48), 7);

  *&v27 = v16;
  *(&v27 + 1) = [(PHASEStreamNode *)self actionTreeUniqueId];
  *&v28 = v17;
  *(&v28 + 1) = [(PHASEStreamNode *)self nodeUID];
  v18 = v12;
  v19 = v13;
  *&v29 = options;
  *(&v29 + 1) = completionCallbackType;
  v20 = _Block_copy(v14);
  v21 = **(v16 + 8);
  v31 = 0;
  v30 = 1;
  v22 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v21, 80, &v31, &v30);
  if (!v22)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v25 = **(v21 + 48);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "CommandQueue.hpp";
      v34 = 1024;
      v35 = 100;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v30)
  {
    v23 = **(v21 + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v33 = "CommandQueue.hpp";
      v34 = 1024;
      v35 = 89;
      v36 = 2048;
      v37 = v31;
      v38 = 2048;
      v39 = 80;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v22 = &unk_284D36548;
  *(v22 + 24) = v28;
  *(v22 + 8) = v27;
  *(v22 + 40) = v18;
  *(v22 + 48) = v19;
  *(v22 + 56) = v29;
  *(v22 + 72) = v20;
  Phase::LockFreeQueueSPSC::CommitBytes(v21, 80);
  atomic_store(0, (v21 + 40));
}

- (void)scheduleBuffer:(uint64_t)a1
{

  JUMPOUT(0x23EE864A0);
}

- (void)scheduleBuffer:(uint64_t)a1 completionCallbackType:completionHandler:
{

  JUMPOUT(0x23EE864A0);
}

- (void)scheduleBuffer:(uint64_t)a1 atTime:options:
{

  JUMPOUT(0x23EE864A0);
}

- (void)scheduleBuffer:(id *)a1 atTime:options:completionCallbackType:completionHandler:
{

  JUMPOUT(0x23EE864A0);
}

@end