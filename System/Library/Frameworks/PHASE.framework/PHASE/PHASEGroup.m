@interface PHASEGroup
- (PHASEEngine)engine;
- (PHASEGroup)init;
- (PHASEGroup)initWithIdentifier:(NSString *)identifier;
- (uint64_t)unregisterFromEngine;
- (void)fadeGain:(double)gain duration:(double)duration curveType:(PHASECurveType)curveType;
- (void)fadeGainHighFrequency:(double)a3 duration:(double)a4 curveType:(int64_t)a5;
- (void)fadeGainLowFrequency:(double)a3 duration:(double)a4 curveType:(int64_t)a5;
- (void)fadeRate:(double)rate duration:(double)duration curveType:(PHASECurveType)curveType;
- (void)mute;
- (void)registerWithEngine:(PHASEEngine *)engine;
- (void)registerWithEngine:(uint64_t)a1;
- (void)solo;
- (void)unmute;
- (void)unregisterFromEngine;
- (void)unsolo;
@end

@implementation PHASEGroup

- (PHASEGroup)init
{
  [(PHASEGroup *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEGroup)initWithIdentifier:(NSString *)identifier
{
  v5 = identifier;
  v15.receiver = self;
  v15.super_class = PHASEGroup;
  v6 = [(PHASEGroup *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_hashId = Phase::GetStringHashId(v5, v8);
    *&v7->_muted = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v7->_gain = _Q0;
    *&v7->_gainLowFrequency = _Q0;
    objc_storeWeak(&v7->_engine, 0);
  }

  return v7;
}

- (void)registerWithEngine:(PHASEEngine *)engine
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = engine;
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Trying to register a group with an invalid engine"];
  }

  else
  {
    v6 = [(PHASEEngine *)v4 groups];
    v7 = [v6 objectForKey:self->_identifier];

    if (v7)
    {
      [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:{@"Group %@ already exists", self->_identifier}];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_engine);

      if (!v8)
      {
        objc_storeWeak(&self->_engine, v4);
        v9 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([(PHASEEngine *)v4 implementation]+ 48), 10);
        v10 = self;
        v11 = **(v9 + 8);
        v18 = 0;
        v17 = 1;
        v12 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v11, 24, &v18, &v17);
        if (!v12)
        {
          Instance = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v15 = **(v11 + 48);
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
          v13 = **(v11 + 48);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v20 = "CommandQueue.hpp";
            v21 = 1024;
            v22 = 89;
            v23 = 2048;
            v24 = v18;
            v25 = 2048;
            v26 = 24;
            _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
          }
        }

        *v12 = &unk_284D35F60;
        v12[1] = v9;
        v12[2] = v10;
        Phase::LockFreeQueueSPSC::CommitBytes(v11, 24);
        atomic_store(0, (v11 + 40));
      }

      [(PHASEEngine *)v4 addGroup:self];
    }
  }
}

- (void)unregisterFromEngine
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([WeakRetained implementation] + 48), 10);
    hashId = self->_hashId;
    v7 = **(v5 + 8);
    v14 = 0;
    v13 = 1;
    v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 24, &v14, &v13);
    if (!v8)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v11 = **(v7 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "CommandQueue.hpp";
        v17 = 1024;
        v18 = 100;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v13)
    {
      v9 = **(v7 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v16 = "CommandQueue.hpp";
        v17 = 1024;
        v18 = 89;
        v19 = 2048;
        v20 = v14;
        v21 = 2048;
        v22 = 24;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v8 = &unk_284D35F88;
    v8[1] = v5;
    v8[2] = hashId;
    Phase::LockFreeQueueSPSC::CommitBytes(v7, 24);
    atomic_store(0, (v7 + 40));
    [v4 removeGroup:self];
    objc_storeWeak(&self->_engine, 0);
  }
}

- (void)fadeGain:(double)gain duration:(double)duration curveType:(PHASECurveType)curveType
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = PHASEGetPropertyBounded<double>(v12, v13, gain, 0.0, 1.0);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = PHASEGetPropertyBounded<double>(v16, v17, duration, 0.0, 1.79769313e308);

    v19 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([WeakRetained implementation] + 48), 10);
    hashId = self->_hashId;
    v21 = **(v19 + 8);
    v28 = 0;
    v27 = 1;
    v22 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v21, 48, &v28, &v27);
    if (!v22)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v25 = **(v21 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 100;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v27)
    {
      v23 = **(v21 + 48);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 89;
        v33 = 2048;
        v34 = v28;
        v35 = 2048;
        v36 = 48;
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v22 = &unk_284D35FB0;
    *(v22 + 1) = v19;
    *(v22 + 2) = hashId;
    v22[3] = v14;
    v22[4] = v18;
    *(v22 + 5) = curveType;
    Phase::LockFreeQueueSPSC::CommitBytes(v21, 48);
    atomic_store(0, (v21 + 40));
    self->_gain = v14;
  }
}

- (void)fadeGainHighFrequency:(double)a3 duration:(double)a4 curveType:(int64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = PHASEGetPropertyBounded<double>(v12, v13, a3, 0.0, 1.0);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = PHASEGetPropertyBounded<double>(v16, v17, a4, 0.0, 1.79769313e308);

    v19 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([WeakRetained implementation] + 48), 10);
    hashId = self->_hashId;
    v21 = **(v19 + 8);
    v28 = 0;
    v27 = 1;
    v22 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v21, 48, &v28, &v27);
    if (!v22)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v25 = **(v21 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 100;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v27)
    {
      v23 = **(v21 + 48);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 89;
        v33 = 2048;
        v34 = v28;
        v35 = 2048;
        v36 = 48;
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v22 = &unk_284D35FD8;
    *(v22 + 1) = v19;
    *(v22 + 2) = hashId;
    v22[3] = v14;
    v22[4] = v18;
    *(v22 + 5) = a5;
    Phase::LockFreeQueueSPSC::CommitBytes(v21, 48);
    atomic_store(0, (v21 + 40));
    self->_gainHighFrequency = v14;
  }
}

- (void)fadeGainLowFrequency:(double)a3 duration:(double)a4 curveType:(int64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = PHASEGetPropertyBounded<double>(v12, v13, a3, 0.0, 1.0);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = PHASEGetPropertyBounded<double>(v16, v17, a4, 0.0, 1.79769313e308);

    v19 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([WeakRetained implementation] + 48), 10);
    hashId = self->_hashId;
    v21 = **(v19 + 8);
    v28 = 0;
    v27 = 1;
    v22 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v21, 48, &v28, &v27);
    if (!v22)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v25 = **(v21 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 100;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v27)
    {
      v23 = **(v21 + 48);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 89;
        v33 = 2048;
        v34 = v28;
        v35 = 2048;
        v36 = 48;
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v22 = &unk_284D36000;
    *(v22 + 1) = v19;
    *(v22 + 2) = hashId;
    v22[3] = v14;
    v22[4] = v18;
    *(v22 + 5) = a5;
    Phase::LockFreeQueueSPSC::CommitBytes(v21, 48);
    atomic_store(0, (v21 + 40));
    self->_gainLowFrequency = v14;
  }
}

- (void)fadeRate:(double)rate duration:(double)duration curveType:(PHASECurveType)curveType
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = PHASEGetPropertyBounded<double>(v12, v13, rate, 0.25, 4.0);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = PHASEGetPropertyBounded<double>(v16, v17, duration, 0.0, 1.79769313e308);

    v19 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>(([WeakRetained implementation] + 48), 10);
    hashId = self->_hashId;
    v21 = **(v19 + 8);
    v28 = 0;
    v27 = 1;
    v22 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v21, 48, &v28, &v27);
    if (!v22)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v25 = **(v21 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 100;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v27)
    {
      v23 = **(v21 + 48);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v30 = "CommandQueue.hpp";
        v31 = 1024;
        v32 = 89;
        v33 = 2048;
        v34 = v28;
        v35 = 2048;
        v36 = 48;
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v22 = &unk_284D36028;
    *(v22 + 1) = v19;
    *(v22 + 2) = hashId;
    v22[3] = v14;
    v22[4] = v18;
    *(v22 + 5) = curveType;
    Phase::LockFreeQueueSPSC::CommitBytes(v21, 48);
    atomic_store(0, (v21 + 40));
    self->_rate = v14;
  }
}

- (void)mute
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v1 + 40), &v3);
  if (result)
  {
    *(result + 448) = 1;
  }

  return result;
}

- (void)unmute
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v1 + 40), &v3);
  if (result)
  {
    *(result + 448) = 0;
  }

  return result;
}

- (void)solo
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v1 + 40), &v3);
  if (result)
  {
    *(result + 449) = 1;
  }

  return result;
}

- (void)unsolo
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((v1 + 40), &v3);
  if (result)
  {
    *(result + 449) = 0;
  }

  return result;
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)registerWithEngine:(uint64_t)a1
{

  JUMPOUT(0x23EE864A0);
}

- (uint64_t)unregisterFromEngine
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  return std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::__erase_unique<unsigned long long>((v1 + 40), &v3);
}

@end