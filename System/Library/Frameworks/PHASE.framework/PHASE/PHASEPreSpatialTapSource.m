@interface PHASEPreSpatialTapSource
- (PHASEPreSpatialTapSource)init;
- (PHASEPreSpatialTapSource)initWithEngine:(id)a3 description:(id)a4;
- (PHASEPreSpatialTapSource)initWithEngine:(id)a3 identifier:(id)a4 binding:(int64_t)a5 tapType:(int64_t)a6;
- (void)addMixer:(id)a3;
- (void)addSource:(id)a3;
- (void)addSubmixId:(UniqueObjectId)a3;
- (void)dealloc;
- (void)removeMixer:(id)a3;
- (void)removeSource:(id)a3;
- (void)removeSubmixId:(UniqueObjectId)a3;
@end

@implementation PHASEPreSpatialTapSource

- (PHASEPreSpatialTapSource)init
{
  [(PHASEPreSpatialTapSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEPreSpatialTapSource)initWithEngine:(id)a3 identifier:(id)a4 binding:(int64_t)a5 tapType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v22.receiver = self;
  v22.super_class = PHASEPreSpatialTapSource;
  v12 = [(PHASEPreSpatialTapSource *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_weakEngine, v10);
    objc_storeStrong(&v13->_identifier, a4);
    v14 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:6553601];
    v15 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:0 interleaved:v14 channelLayout:48000.0];
    format = v13->_format;
    v13->_format = v15;

    v17 = *([v10 implementation] + 424);
    StringHashId = Phase::GetStringHashId(v13->_identifier, v18);
    (*(*v17 + 16))(v17, StringHashId, 0, a5, a6);
    v20 = v13;
  }

  return v13;
}

- (PHASEPreSpatialTapSource)initWithEngine:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 uidString];
  v9 = -[PHASEPreSpatialTapSource initWithEngine:identifier:binding:tapType:](self, "initWithEngine:identifier:binding:tapType:", v6, v8, [v7 binding], objc_msgSend(v7, "type"));

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    v5 = *([v4 implementation] + 424);
    StringHashId = Phase::GetStringHashId(self->_identifier, v6);
    (*(*v5 + 24))(v5, StringHashId, 0);
  }

  v8.receiver = self;
  v8.super_class = PHASEPreSpatialTapSource;
  [(PHASEPreSpatialTapSource *)&v8 dealloc];
}

- (void)addSubmixId:(UniqueObjectId)a3
{
  v3 = a3.mStorage[1];
  v4 = a3.mStorage[0];
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  if (WeakRetained)
  {
    v6 = *([WeakRetained implementation] + 424);
    StringHashId = Phase::GetStringHashId(self->_identifier, v7);
    (*(*v6 + 32))(v6, StringHashId, 0, v4, v3);
  }
}

- (void)removeSubmixId:(UniqueObjectId)a3
{
  v3 = a3.mStorage[1];
  v4 = a3.mStorage[0];
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  if (WeakRetained)
  {
    v6 = *([WeakRetained implementation] + 424);
    StringHashId = Phase::GetStringHashId(self->_identifier, v7);
    (*(*v6 + 40))(v6, StringHashId, 0, v4, v3);
  }
}

- (void)addMixer:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  if (!v4 || ([v4 weakActionTreeObject], (WeakRetained = *&v19[8]) == 0))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = std::__shared_weak_count::lock(*&v19[8]);
  if (v7)
  {
    v8 = *v19;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_weak(*&v19[8]);
  if (!v8)
  {
LABEL_11:
    v18 = **(Phase::Logger::GetInstance(WeakRetained) + 448);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "PHASETaps.mm";
      *&v19[12] = 1024;
      *&v19[14] = 503;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get an Action Tree Object. The PHASEMixer will not be added to the Tap.", v19, 0x12u);
    }

    goto LABEL_13;
  }

  v9 = [v4 identifier];
  StringHashId = Phase::GetStringHashId(v9, v10);
  SubmixIdFromHashName = Phase::ActionTreeObject::FindSubmixIdFromHashName(v8, StringHashId);
  v14 = v13;

  if (SubmixIdFromHashName | v14)
  {
    v15 = *([(Phase::Logger *)v6 implementation]+ 424);
    v17 = Phase::GetStringHashId(self->_identifier, v16);
    (*(*v15 + 32))(v15, v17, 0, SubmixIdFromHashName, v14);
  }

LABEL_13:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_15:
}

- (void)removeMixer:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  if (!v4 || ([v4 weakActionTreeObject], (WeakRetained = *&v19[8]) == 0))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = std::__shared_weak_count::lock(*&v19[8]);
  if (v7)
  {
    v8 = *v19;
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_weak(*&v19[8]);
  if (!v8)
  {
LABEL_11:
    v18 = **(Phase::Logger::GetInstance(WeakRetained) + 448);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "PHASETaps.mm";
      *&v19[12] = 1024;
      *&v19[14] = 530;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get an Action Tree Object. The PHASEMixer will not be removed from the Tap.", v19, 0x12u);
    }

    goto LABEL_13;
  }

  v9 = [v4 identifier];
  StringHashId = Phase::GetStringHashId(v9, v10);
  SubmixIdFromHashName = Phase::ActionTreeObject::FindSubmixIdFromHashName(v8, StringHashId);
  v14 = v13;

  if (SubmixIdFromHashName | v14)
  {
    v15 = *([(Phase::Logger *)v6 implementation]+ 424);
    v17 = Phase::GetStringHashId(self->_identifier, v16);
    (*(*v15 + 40))(v15, v17, 0, SubmixIdFromHashName, v14);
  }

LABEL_13:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_15:
}

- (void)addSource:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  if (WeakRetained)
  {
    v6 = [v4 engine];

    if (WeakRetained == v6)
    {
      v9 = *([WeakRetained implementation] + 424);
      StringHashId = Phase::GetStringHashId(self->_identifier, v10);
      (*(*v9 + 48))(v9, StringHashId, 0, [v4 geoEntityHandle]);
    }

    else
    {
      v8 = **(Phase::Logger::GetInstance(v7) + 448);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "PHASETaps.mm";
        v14 = 1024;
        v15 = 543;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PHASEPreSpatialTapSource addSource failed: PHASESource is from a different engine instance", &v12, 0x12u);
      }
    }
  }
}

- (void)removeSource:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_weakEngine);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *([WeakRetained implementation] + 424);
    StringHashId = Phase::GetStringHashId(self->_identifier, v7);
    (*(*v6 + 56))(v6, StringHashId, 0, [v9 geoEntityHandle]);
  }
}

@end