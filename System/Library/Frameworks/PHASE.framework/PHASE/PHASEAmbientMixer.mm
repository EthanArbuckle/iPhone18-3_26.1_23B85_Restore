@interface PHASEAmbientMixer
- (PHASEAmbientMixer)init;
- (PHASEAmbientMixer)initWithIdentifier:(uint64_t)a3 listener:(void *)a4 inputChannelLayout:(void *)a5 orientation:(void *)a6 engine:(void *)a7 actionTreeObjectId:(unint64_t)a8;
- (void)setOrientation:;
- (void)setOrientation:(uint64_t)a1;
@end

@implementation PHASEAmbientMixer

- (PHASEAmbientMixer)init
{
  [(PHASEAmbientMixer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEAmbientMixer)initWithIdentifier:(uint64_t)a3 listener:(void *)a4 inputChannelLayout:(void *)a5 orientation:(void *)a6 engine:(void *)a7 actionTreeObjectId:(unint64_t)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25.receiver = a1;
  v25.super_class = PHASEAmbientMixer;
  v19 = [(PHASEMixer *)&v25 initWithIdentifier:v15];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_listener, a5);
    objc_storeStrong(&v20->_inputChannelLayout, a6);
    *&v20[1].super.super.isa = a2;
    v20->_actionTreeManager = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v18 implementation] + 48), 7);
    v20->_submixHashName = Phase::GetStringHashId(v15, v21);
    v20->_actionTreeObjectId.mStorage[0] = a8;
    v20->_actionTreeObjectId.mStorage[1] = a9;
    v22 = v20;
  }

  return v20;
}

- (void)setOrientation:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2.f32[1];
  v3 = a2.f32[2];
  v4 = a2.f32[3];
  v5 = 1.0 - sqrtf(vmuls_lane_f32(a2.f32[3], a2, 3) + (vmuls_lane_f32(a2.f32[2], a2, 2) + (vmulq_f32(a2, a2).f32[0] + vmuls_lane_f32(a2.f32[1], *a2.f32, 1))));
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 <= 0.1)
  {
    *(a1 + 96) = a2;
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v18 = *(a1 + 56);
    v9 = **(v7 + 8);
    v17 = 0;
    v16 = 1;
    v10 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v9, 64, &v17, &v16);
    if (!v10)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v13 = **(v9 + 48);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "CommandQueue.hpp";
        v21 = 1024;
        v22 = 100;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
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
        v20 = "CommandQueue.hpp";
        v21 = 1024;
        v22 = 89;
        v23 = 2048;
        v24 = *&v17;
        v25 = 2048;
        v26 = 64;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v10 = &unk_284D36190;
    *(v10 + 16) = v7;
    *(v10 + 24) = v18;
    *(v10 + 40) = v8;
    *(v10 + 48) = a2;
    Phase::LockFreeQueueSPSC::CommitBytes(v9, 64);
    atomic_store(0, (v9 + 40));
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(a1) + 448);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v20 = "PHASEMixer.mm";
      v21 = 1024;
      v22 = 374;
      v23 = 2048;
      v24 = a2.f32[0];
      v25 = 2048;
      *&v26 = v2;
      v27 = 2048;
      v28 = v3;
      v29 = 2048;
      v30 = v4;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to initialize Ambient Mixer: orientation [%f, %f, %f, %f] must be normalized", buf, 0x3Au);
    }
  }
}

- (void)setOrientation:
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  return Phase::ActionTreeManager::SetAmbientOrientation(v2, v1, v3, v4, &v6);
}

@end