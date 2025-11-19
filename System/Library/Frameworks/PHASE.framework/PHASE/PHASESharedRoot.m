@interface PHASESharedRoot
- (PHASESharedRoot)initWithEngine:(id)a3;
- (PHASESharedRoot)initWithEngine:(id)a3 entityType:(unsigned int)a4 shapes:(id)a5;
- (PHASESharedRoot)initWithEngine:(id)a3 session:(id)a4 sessionUUID:(id)a5;
- (PHASESharedRoot)initWithEngine:(id)a3 sessionUUID:(id)a4;
- (void)dealloc;
- (void)setTransform:(void *)a1;
@end

@implementation PHASESharedRoot

- (PHASESharedRoot)initWithEngine:(id)a3
{
  [(PHASESharedRoot *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESharedRoot)initWithEngine:(id)a3 entityType:(unsigned int)a4 shapes:(id)a5
{
  [(PHASESharedRoot *)self doesNotRecognizeSelector:a2, *&a4, a5];

  return 0;
}

- (PHASESharedRoot)initWithEngine:(id)a3 sessionUUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11[0].receiver = self;
  v11[0].super_class = PHASESharedRoot;
  v8 = [(objc_super *)v11 initWithEngine:v6 entityType:0 shapes:0];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = *([v6 implementation] + 488);
  if (v9)
  {
    v12 = 0;
    [v7 getUUIDBytes:&v12];
    v11[1] = v12;
    v8->_sessionUUID = v12;
    [(PHASEObject *)v8 setGeoEntityHandle:(*(v9->super.super.isa + 5))(v9, v8->_sessionUUID.mStorage[0], v8->_sessionUUID.mStorage[1])];
LABEL_4:
    v9 = v8;
  }

  return v9;
}

- (PHASESharedRoot)initWithEngine:(id)a3 session:(id)a4 sessionUUID:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0].receiver = self;
  v15[0].super_class = PHASESharedRoot;
  v11 = [(objc_super *)v15 initWithEngine:v8 entityType:0 shapes:0];
  if (v11)
  {
    v12 = *([v8 implementation] + 488);
    if (!v12)
    {
      v13 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v11->_session, a4);
    v16 = 0;
    [v10 getUUIDBytes:&v16];
    v15[1] = v16;
    v11->_sessionUUID = v16;
    [(PHASEObject *)v11 setGeoEntityHandle:(*(*v12 + 40))(v12, v11->_sessionUUID.mStorage[0], v11->_sessionUUID.mStorage[1])];
  }

  v13 = v11;
LABEL_6:

  return v13;
}

- (void)dealloc
{
  v3 = [(PHASEObject *)self engine];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 implementation];
    if (v5)
    {
      v6 = *(v5 + 488);
      if (v6)
      {
        (*(*v6 + 48))(v6, self->_sessionUUID.mStorage[0], self->_sessionUUID.mStorage[1]);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = PHASESharedRoot;
  [(PHASEObject *)&v7 dealloc];
}

- (void)setTransform:(void *)a1
{
  v8 = *MEMORY[0x277D85DE8];
  if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
  {
    dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
  }

  if (Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities)
  {
    v3.receiver = a1;
    v3.super_class = PHASESharedRoot;
    [(PHASEObject *)&v3 setTransform:?];
  }

  else
  {
    v2 = **(Phase::Logger::GetInstance(a1) + 448);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v5 = "PHASESharedRoot.mm";
      v6 = 1024;
      v7 = 86;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting root object's transform has no effect", buf, 0x12u);
    }
  }
}

@end