@interface PHASESharedListener
- (PHASESharedListener)initWithEngine:(id)engine;
- (PHASESharedListener)initWithEngine:(id)engine entityType:(unsigned int)type;
- (id)initInternalWithEngine:(id)engine;
- (void)dealloc;
- (void)setAutomaticHeadTrackingFlags:(unint64_t)flags;
- (void)setGain:(double)gain;
- (void)setTransform:(double)transform;
- (void)setUpdateMode:(int64_t)mode;
@end

@implementation PHASESharedListener

- (PHASESharedListener)initWithEngine:(id)engine
{
  [(PHASESharedListener *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESharedListener)initWithEngine:(id)engine entityType:(unsigned int)type
{
  [(PHASESharedListener *)self doesNotRecognizeSelector:a2, *&type];

  return 0;
}

- (id)initInternalWithEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = PHASESharedListener;
  v5 = [(PHASEListener *)&v9 initWithEngine:engineCopy entityType:0];
  if (v5)
  {
    v6 = *([engineCopy implementation] + 488);
    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }

    [(PHASEObject *)v5 setGeoEntityHandle:(*(*v6 + 16))(v6)];
    [(PHASEListener *)v5 internalSetAutomaticHeadTrackingFlags:3];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (void)setUpdateMode:(int64_t)mode
{
  v15 = *MEMORY[0x277D85DE8];
  engine = [(PHASEObject *)self engine];
  v6 = engine;
  if (engine)
  {
    if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
    {
      dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
    }

    if (Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities)
    {
      implementation = [(Phase::Logger *)v6 implementation];
      if (implementation)
      {
        v8 = *(implementation + 488);
        if (v8)
        {
          ListenerUpdateModeFromEnum = Phase::GetListenerUpdateModeFromEnum(mode);
          (*(*v8 + 32))(v8, ListenerUpdateModeFromEnum);
        }
      }

      self->_updateMode = mode;
    }

    else
    {
      v10 = **(Phase::Logger::GetInstance(engine) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "PHASESharedListener.mm";
        v13 = 1024;
        v14 = 61;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set listener update mode.", &v11, 0x12u);
      }
    }
  }
}

- (void)dealloc
{
  engine = [(PHASEObject *)self engine];
  v4 = engine;
  if (engine)
  {
    implementation = [engine implementation];
    if (implementation)
    {
      v6 = *(implementation + 488);
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = PHASESharedListener;
  [(PHASEObject *)&v7 dealloc];
}

- (void)setGain:(double)gain
{
  v11 = *MEMORY[0x277D85DE8];
  if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
  {
    dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
  }

  if (Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities)
  {
    v6.receiver = self;
    v6.super_class = PHASESharedListener;
    [(PHASEListener *)&v6 setGain:gain];
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "PHASESharedListener.mm";
      v9 = 1024;
      v10 = 93;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting PHASESharedListener's gain has no effect", buf, 0x12u);
    }
  }
}

- (void)setTransform:(double)transform
{
  v46 = *MEMORY[0x277D85DE8];
  engine = [self engine];
  v7 = engine;
  if (engine)
  {
    if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
    {
      dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
    }

    if (Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities)
    {
      mach_absolute_time();
      v8 = __udivti3();
      v24 = xmmword_23A554920;
      v25 = 0.0;
      v26 = 0;
      v27 = 1065353216;
      v23.receiver = self;
      v23.super_class = PHASESharedListener;
      v9 = [(PHASEObject *)&v23 validateTransform:&v24 outAffine:a2, transform, a4, a5];
      if (v9)
      {
        Instance = Phase::Logger::GetInstance(v9);
        if (*(Instance + 456) == 1)
        {
          v11 = **(Phase::Logger::GetInstance(Instance) + 448);
          v12 = Phase::Logger::GetInstance(v11);
          v13 = os_signpost_id_generate(**(v12 + 448));
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v14 = v13;
            if (os_signpost_enabled(v11))
            {
              geoEntityHandle = [self geoEntityHandle];
              *buf = 134220032;
              selfCopy = self;
              v30 = 2048;
              v31 = geoEntityHandle;
              v32 = 2048;
              v33 = *&v24;
              v34 = 2048;
              v35 = *(&v24 + 1);
              v36 = 2048;
              v37 = *(&v24 + 2);
              v38 = 2048;
              v39 = *(&v24 + 3);
              v40 = 2048;
              v41 = v25;
              v42 = 2048;
              v43 = *&v26;
              v44 = 2048;
              v45 = *(&v26 + 1);
              _os_signpost_emit_with_name_impl(&dword_23A302000, v11, OS_SIGNPOST_EVENT, v14, "Phase_API_Transform_Update", "SharedListener@%p: %llu Update Rotation: [%f, %f, %f, %f], Position: [%f, %f, %f]", buf, 0x5Cu);
            }
          }
        }

        v16 = *([(Phase::Logger *)v7 implementation]+ 368);
        (*(*v16 + 304))(v16, [self geoEntityHandle], &v24, v8);
        v22.receiver = self;
        v22.super_class = PHASESharedListener;
        [(PHASEObject *)&v22 _storeTransform:a2, transform, a4, a5];
      }
    }

    else
    {
      v17 = **(Phase::Logger::GetInstance(engine) + 448);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        selfCopy = "PHASESharedListener.mm";
        v30 = 1024;
        LODWORD(v31) = 110;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting PHASESharedListener's transform has no effect", buf, 0x12u);
      }
    }
  }
}

- (void)setAutomaticHeadTrackingFlags:(unint64_t)flags
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PHASESharedListener.mm";
    v6 = 1024;
    v7 = 139;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set PHASEAutomaticHeadTrackingFlags on shared listener.", &v4, 0x12u);
  }
}

@end