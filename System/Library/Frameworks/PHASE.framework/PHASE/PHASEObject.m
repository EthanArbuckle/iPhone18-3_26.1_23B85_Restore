@interface PHASEObject
+ (void)deRegisterSubTree:(id)a3 engine:(id)a4;
+ (void)registerSubTree:(id)a3 engine:(id)a4;
- (BOOL)addChild:(PHASEObject *)child error:(NSError *)error;
- (BOOL)isConnectedToRoot;
- (BOOL)isUnderTarget:(id)a3;
- (BOOL)validateTransform:(__n128)a3 outAffine:(__n128)a4;
- (NSArray)children;
- (PHASEEngine)engine;
- (PHASEObject)init;
- (PHASEObject)initWithEngine:(PHASEEngine *)engine;
- (PHASEObject)initWithEngine:(id)a3 entityType:(unsigned int)a4 shapes:(id)a5;
- (PHASEObject)parent;
- (__n128)_convertTransform:(__n128)a3 fromObject:(__n128)a4;
- (__n128)_storeTransform:(__n128)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (simd_float4x4)transform;
- (simd_float4x4)worldTransform;
- (void)dealloc;
- (void)removeChild:(PHASEObject *)child;
- (void)removeChildren;
- (void)setTransform:(simd_float4x4)transform;
- (void)setWorldTransform:(simd_float4x4)worldTransform;
@end

@implementation PHASEObject

- (PHASEObject)init
{
  [(PHASEObject *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEObject)initWithEngine:(id)a3 entityType:(unsigned int)a4 shapes:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  obj = a3;
  v48 = a5;
  v58.receiver = self;
  v58.super_class = PHASEObject;
  v7 = [(PHASEObject *)&v58 init];
  v8 = v7;
  if (!v7)
  {
LABEL_44:
    v37 = v8;
    goto LABEL_55;
  }

  objc_storeWeak(&v7->_engine, obj);
  objc_storeWeak(&v8->_parent, 0);
  __p = 0;
  v56 = 0;
  v57 = 0;
  if (!v48 || ![v48 count])
  {
    goto LABEL_34;
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48, "count")}];
  [(PHASEObject *)v8 setGeoShapeHandles:v9];

  v10 = [v48 count];
  if (v10 > (v57 - __p) >> 3)
  {
    if (!(v10 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = v48;
  v11 = [v44 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (!v11)
  {
    goto LABEL_33;
  }

  v46 = *v52;
  while (2)
  {
    v45 = v11;
    for (i = 0; i != v45; ++i)
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v51 + 1) + 8 * i);
      v13 = [v50 engine];
      WeakRetained = objc_loadWeakRetained(&v8->_engine);
      v15 = v13 == WeakRetained;

      if (!v15)
      {
        v39 = **(Phase::Logger::GetInstance(v16) + 448);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_loadWeakRetained(&v8->_engine);
          v41 = [v50 engine];
          *buf = 136315906;
          v60 = "PHASEObject.mm";
          v61 = 1024;
          v62 = 89;
          v63 = 2048;
          v64 = v40;
          v65 = 2048;
          v66 = v41;
          _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Error: Attempting to use a shape initialized with a different PHASEEngine instance @%p", buf, 0x26u);
        }

        goto LABEL_51;
      }

      v17 = [v50 geoShapeHandlesForEntityType:a4];
      if (!v17)
      {
        v39 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_loadWeakRetained(&v8->_engine);
          *buf = 136315906;
          v60 = "PHASEObject.mm";
          v61 = 1024;
          v62 = 97;
          v63 = 2048;
          v64 = v42;
          v65 = 1024;
          LODWORD(v66) = a4;
          _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Error: could not create shape handles for entity type %d!", buf, 0x22u);
        }

LABEL_51:

        goto LABEL_52;
      }

      for (j = 0; [v17 count] > j; ++j)
      {
        v19 = [v17 objectAtIndexedSubscript:j];
        v20 = [v19 unsignedLongLongValue];

        if (v20)
        {
          v21 = v56;
          if (v56 >= v57)
          {
            v23 = __p;
            v24 = v56 - __p;
            v25 = (v56 - __p) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
              std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
            }

            v27 = v57 - __p;
            if ((v57 - __p) >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v28);
            }

            *(8 * v25) = v20;
            v22 = 8 * v25 + 8;
            memcpy(0, v23, v24);
            v29 = __p;
            __p = 0;
            v56 = v22;
            v57 = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v56 = v20;
            v22 = (v21 + 8);
          }

          v56 = v22;
          v30 = [(PHASEObject *)v8 geoShapeHandles];
          v31 = [v17 objectAtIndexedSubscript:j];
          [v30 addObject:v31];
        }
      }
    }

    v11 = [v44 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_33:

LABEL_34:
  if (!a4)
  {
LABEL_38:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v35 = *(MEMORY[0x277D860B8] + 32);
      v34 = *(MEMORY[0x277D860B8] + 48);
      v36 = *(MEMORY[0x277D860B8] + 16);
      *v8->_anon_10 = *MEMORY[0x277D860B8];
      *&v8->_anon_10[16] = v36;
      *&v8->_anon_10[32] = v35;
      *&v8->_anon_10[48] = v34;
    }

    else
    {
      [(PHASEObject *)v8 setTransform:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)];
    }

    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    goto LABEL_44;
  }

  v32 = [obj implementation];
  [(PHASEObject *)v8 setGeoEntityHandle:(*(**(v32 + 368) + 16))(*(v32 + 368), a4)];
  if ([(PHASEObject *)v8 geoEntityHandle])
  {
    if (v56 != __p)
    {
      v33 = *([obj implementation] + 368);
      (*(*v33 + 136))(v33, [(PHASEObject *)v8 geoEntityHandle], &__p);
    }

    goto LABEL_38;
  }

  v44 = **(Phase::Logger::GetInstance(0) + 448);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_loadWeakRetained(&v8->_engine);
    *buf = 136315906;
    v60 = "PHASEObject.mm";
    v61 = 1024;
    v62 = 119;
    v63 = 2048;
    v64 = v38;
    v65 = 1024;
    LODWORD(v66) = a4;
    _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Error: could not create geometry entity handle for type %d!", buf, 0x22u);
  }

LABEL_52:

  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  v37 = 0;
LABEL_55:

  return v37;
}

- (PHASEObject)initWithEngine:(PHASEEngine *)engine
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = engine;
  v16.receiver = self;
  v16.super_class = PHASEObject;
  v5 = [(PHASEObject *)&v16 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v5->_engine, v4);
  objc_storeWeak(&v6->_parent, 0);
  WeakRetained = objc_loadWeakRetained(&v6->_engine);
  v8 = [WeakRetained implementation];
  [(PHASEObject *)v6 setGeoEntityHandle:(*(**(v8 + 368) + 16))(*(v8 + 368), 1)];

  if ([(PHASEObject *)v6 geoEntityHandle])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(MEMORY[0x277D860B8] + 32);
      v9 = *(MEMORY[0x277D860B8] + 48);
      v11 = *(MEMORY[0x277D860B8] + 16);
      *v6->_anon_10 = *MEMORY[0x277D860B8];
      *&v6->_anon_10[16] = v11;
      *&v6->_anon_10[32] = v10;
      *&v6->_anon_10[48] = v9;
    }

    else
    {
      [(PHASEObject *)v6 setTransform:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)];
    }

LABEL_9:
    v14 = v6;
    goto LABEL_10;
  }

  v12 = **(Phase::Logger::GetInstance(0) + 448);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_loadWeakRetained(&v6->_engine);
    *buf = 136315906;
    v18 = "PHASEObject.mm";
    v19 = 1024;
    v20 = 161;
    v21 = 2048;
    v22 = v13;
    v23 = 1024;
    v24 = 1;
    _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Error: could not create geometry entity handle for type %d!", buf, 0x22u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(PHASEObject *)self geoShapeHandles];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v16 + 1) + 8 * v8) unsignedLongLongValue];
          v10 = [v4 implementation];
          (*(**(v10 + 368) + 344))(*(v10 + 368), v9);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v6);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = **(Phase::Logger::GetInstance(isKindOfClass) + 448);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v21 = "PHASEObject.mm";
        v22 = 1024;
        v23 = 198;
        v24 = 2112;
        v25 = self;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed %@", buf, 0x1Cu);
      }
    }

    v13 = *([v4 implementation] + 368);
    (*(*v13 + 320))(v13, [(PHASEObject *)self geoEntityHandle]);
    [(PHASEObject *)self setGeoEntityHandle:0];
    v14 = [(PHASEObject *)self geoShapeHandles];
    [v14 removeAllObjects];
  }

  v15.receiver = self;
  v15.super_class = PHASEObject;
  [(PHASEObject *)&v15 dealloc];
}

- (BOOL)isConnectedToRoot
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  for (i = self; ; i = v12)
  {
    v5 = [(PHASEObject *)i parent];
    v3 = v5 != 0;

    if (!v5)
    {
      break;
    }

    v6 = [(PHASEObject *)i parent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(PHASEObject *)i parent];
      v3 = [v13 isConnectedToRoot];

      break;
    }

    v8 = [(PHASEObject *)i parent];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      break;
    }

    v10 = [(PHASEObject *)i parent];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      break;
    }

    v12 = [(PHASEObject *)i parent];
  }

  return v3;
}

+ (void)registerSubTree:(id)a3 engine:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *([v6 implementation] + 368);
  WeakRetained = objc_loadWeakRetained(v5 + 10);
  (*(*v7 + 280))(v7, WeakRetained[12], v5[12]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v5[1];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        [PHASEObject registerSubTree:v13 engine:v6, v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (void)deRegisterSubTree:(id)a3 engine:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5[1];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        [PHASEObject deRegisterSubTree:v11 engine:v6, v23];
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = Phase::Controller::TaskManager::GetService<Phase::Controller::AssetUnloader>(([v6 implementation] + 48), 12);
    WeakRetained = objc_loadWeakRetained(v5 + 10);
    v14 = WeakRetained[12];
    v15 = v5[12];
    v16 = **(v12 + 8);
    v28 = 0;
    v27 = 1;
    v17 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v16, 32, &v28, &v27);
    if (!v17)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v21 = **(v16 + 48);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "CommandQueue.hpp";
        v32 = 1024;
        v33 = 100;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v27)
    {
      v18 = **(v16 + 48);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v31 = "CommandQueue.hpp";
        v32 = 1024;
        v33 = 89;
        v34 = 2048;
        v35 = v28;
        v36 = 2048;
        v37 = 32;
        _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v17 = &unk_284D361B8;
    v17[1] = v12;
    v17[2] = v14;
    v17[3] = v15;
    Phase::LockFreeQueueSPSC::CommitBytes(v16, 32);
    atomic_store(0, (v16 + 40));
  }

  else
  {
    v19 = *([v6 implementation] + 368);
    WeakRetained = objc_loadWeakRetained(v5 + 10);
    (*(*v19 + 288))(v19, WeakRetained[12], v5[12]);
  }
}

- (BOOL)isUnderTarget:(id)a3
{
  v4 = self;
  while (1)
  {
    v5 = v4;
    if (v4 == a3)
    {
      break;
    }

    v4 = [(PHASEObject *)v4 parent];

    if (!v4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = v4;
LABEL_6:

  return v5 == a3;
}

- (BOOL)addChild:(PHASEObject *)child error:(NSError *)error
{
  v105[1] = *MEMORY[0x277D85DE8];
  v6 = child;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = WeakRetained;
  if (error)
  {
    *error = 0;
  }

  if (!WeakRetained)
  {
    v16 = *MEMORY[0x277CCA450];
    v104 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v105[0] = v17;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:&v104 count:1];

    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v11 objectForKeyedSubscript:v16];
      v21 = v20;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 310;
      v82 = 2080;
      v83 = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913633 userInfo:v11];
    }

    goto LABEL_67;
  }

  if (!v6)
  {
    v22 = *MEMORY[0x277CCA450];
    v102 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil child PHASEObject is invalid"];
    v103 = v23;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];

    v25 = **(Phase::Logger::GetInstance(v24) + 448);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v11 objectForKeyedSubscript:v22];
      v27 = v26;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 322;
      v82 = 2080;
      v83 = [v26 UTF8String];
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  if (v6 == self)
  {
    v28 = *MEMORY[0x277CCA450];
    v100 = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot make an entity a parent of itself"];
    v101 = v29;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];

    v31 = **(Phase::Logger::GetInstance(v30) + 448);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v11 objectForKeyedSubscript:v28];
      v33 = v32;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 334;
      v82 = 2080;
      v83 = [v32 UTF8String];
      _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  if ([(PHASEObject *)self isUnderTarget:v6])
  {
    v9 = *MEMORY[0x277CCA450];
    v98 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot add child that is in this object's parentage"];
    v99 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];

    v13 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v11 objectForKeyedSubscript:v9];
      v15 = v14;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 348;
      v82 = 2080;
      v83 = [v14 UTF8String];
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

LABEL_67:

    v74 = 0;
    goto LABEL_68;
  }

  v34 = [(PHASEObject *)v6 engine];

  if (v8 != v34)
  {
    v35 = *MEMORY[0x277CCA450];
    v96 = *MEMORY[0x277CCA450];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot add a child belonging to a different engine"];
    v97 = v36;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];

    v38 = **(Phase::Logger::GetInstance(v37) + 448);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [v11 objectForKeyedSubscript:v35];
      v40 = v39;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 362;
      v82 = 2080;
      v83 = [v39 UTF8String];
      _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  v41.mData = [(PHASEObject *)self geoEntityHandle];
  if (v41.mData == [(PHASEObject *)v6 geoEntityHandle])
  {
    v42 = *MEMORY[0x277CCA450];
    v94 = *MEMORY[0x277CCA450];
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot make an entity a parent of itself"];
    v95 = v43;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];

    v45 = **(Phase::Logger::GetInstance(v44) + 448);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [v11 objectForKeyedSubscript:v42];
      v47 = v46;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 375;
      v82 = 2080;
      v83 = [v46 UTF8String];
      _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
    {
      dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
    }

    if ((Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities & 1) == 0)
    {
      v60 = *MEMORY[0x277CCA450];
      v92 = *MEMORY[0x277CCA450];
      v93 = @"Cannot add PHASESharedListener as child";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v61 = **(Phase::Logger::GetInstance(v11) + 448);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = [v11 objectForKeyedSubscript:v60];
        *buf = 136315650;
        v79 = "PHASEObject.mm";
        v80 = 1024;
        v81 = 388;
        v82 = 2112;
        v83 = v62;
        _os_log_impl(&dword_23A302000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
      }

      goto LABEL_67;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = *MEMORY[0x277CCA450];
    v90 = *MEMORY[0x277CCA450];
    v91 = @"Cannot add root object as child";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v49 = **(Phase::Logger::GetInstance(v11) + 448);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [v11 objectForKeyedSubscript:v48];
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 403;
      v82 = 2112;
      v83 = v50;
      _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  if (!self->_children)
  {
    v51 = objc_opt_new();
    children = self->_children;
    self->_children = v51;
  }

  v53 = [(PHASEObject *)v6 parent];

  if (v53)
  {
    v54 = *MEMORY[0x277CCA450];
    v88 = *MEMORY[0x277CCA450];
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASEObject child node already has a parent"];
    v89 = v55;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];

    v57 = **(Phase::Logger::GetInstance(v56) + 448);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [v11 objectForKeyedSubscript:v54];
      v59 = v58;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 424;
      v82 = 2080;
      v83 = [v58 UTF8String];
      _os_log_impl(&dword_23A302000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  v63 = [(PHASEObject *)self engine];
  v64 = [(PHASEObject *)v6 engine];

  if (v63 != v64)
  {
    v65 = *MEMORY[0x277CCA450];
    v86 = *MEMORY[0x277CCA450];
    v66 = MEMORY[0x277CCACA8];
    v67 = [(PHASEObject *)self engine];
    v68 = [(PHASEObject *)v6 engine];
    v69 = [v66 stringWithFormat:@"PHASEObject child is registered with a different engine instance than the parent @%p - @%p", v67, v68];
    v87 = v69;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];

    v71 = **(Phase::Logger::GetInstance(v70) + 448);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = [v11 objectForKeyedSubscript:v65];
      v73 = v72;
      *buf = 136315650;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 441;
      v82 = 2080;
      v83 = [v72 UTF8String];
      _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v11];
    }

    goto LABEL_67;
  }

  [(NSMutableSet *)self->_children addObject:v6];
  [(PHASEObject *)v6 setParent:self];
  if ([(PHASEObject *)self isConnectedToRoot])
  {
    [PHASEObject registerSubTree:v6 engine:v8];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v77 = **(Phase::Logger::GetInstance(isKindOfClass) + 448);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v79 = "PHASEObject.mm";
      v80 = 1024;
      v81 = 460;
      v82 = 2112;
      v83 = v6;
      v84 = 2112;
      v85 = self;
      _os_log_impl(&dword_23A302000, v77, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added child %@ to parent %@", buf, 0x26u);
    }
  }

  v74 = 1;
LABEL_68:

  return v74;
}

- (void)removeChild:(PHASEObject *)child
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = child;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v6 = WeakRetained;
  if (v4 && WeakRetained && ([(PHASEObject *)v4 parent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == self))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = **(Phase::Logger::GetInstance(isKindOfClass) + 448);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = "PHASEObject.mm";
        v14 = 1024;
        v15 = 479;
        v16 = 2112;
        v17 = v4;
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed child %@ from parent %@", &v12, 0x26u);
      }
    }

    if ([(PHASEObject *)self isConnectedToRoot])
    {
      [PHASEObject deRegisterSubTree:v4 engine:v6];
    }

    [(NSMutableSet *)self->_children removeObject:v4];
    [(PHASEObject *)v4 setParent:0];
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(WeakRetained) + 448);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(PHASEObject *)v4 parent];
      v12 = 136316418;
      v13 = "PHASEObject.mm";
      v14 = 1024;
      v15 = 473;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = self;
      v20 = 2048;
      v21 = v4;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Error: object@%p, cannot remove the child@%p with parent@%p!", &v12, 0x3Au);
    }
  }
}

- (void)removeChildren
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained && [(PHASEObject *)self isConnectedToRoot])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_children;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          [PHASEObject deRegisterSubTree:v8 engine:WeakRetained, v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  [(NSMutableSet *)self->_children removeAllObjects];
}

- (NSArray)children
{
  children = self->_children;
  if (children && [(NSMutableSet *)children count])
  {
    v4 = MEMORY[0x277CBEA60];
    v5 = [(NSMutableSet *)self->_children allObjects];
    v6 = [v4 arrayWithArray:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEA60] array];
  }

  return v6;
}

- (BOOL)validateTransform:(__n128)a3 outAffine:(__n128)a4
{
  v7 = a2.n128_f32[0];
  v139 = *MEMORY[0x277D85DE8];
  v8 = a2.n128_f32[1];
  v9 = a2.n128_f32[2];
  v10 = a3.n128_f32[1];
  v11 = a3.n128_f32[2];
  v90 = a3.n128_f32[3];
  v91 = a2.n128_f32[3];
  v12 = a4.n128_f32[1];
  v13 = a4.n128_f32[2];
  v89 = a4.n128_f32[3];
  v87 = a5.n128_f32[1];
  v14 = a5.n128_f32[2];
  v15 = a5.n128_f32[3];
  v94 = xmmword_23A554920;
  v92 = 0.0;
  v93 = 0;
  v16 = -a5.n128_f32[3];
  if (a5.n128_f32[3] >= 0.0)
  {
    v16 = a5.n128_f32[3];
  }

  v88 = a5.n128_u64[0];
  v85 = a3.n128_f32[0];
  v86 = a4.n128_f32[0];
  v84 = v7;
  if (v16 <= 0.00000011921)
  {
    goto LABEL_37;
  }

  v99[0] = v7 / a5.n128_f32[3];
  v99[1] = a2.n128_f32[1] / a5.n128_f32[3];
  v99[2] = a2.n128_f32[2] / a5.n128_f32[3];
  v99[4] = a3.n128_f32[0] / a5.n128_f32[3];
  v99[5] = a3.n128_f32[1] / a5.n128_f32[3];
  v99[6] = a3.n128_f32[2] / a5.n128_f32[3];
  v99[8] = a4.n128_f32[0] / a5.n128_f32[3];
  v99[9] = a4.n128_f32[1] / a5.n128_f32[3];
  v99[10] = a4.n128_f32[2] / a5.n128_f32[3];
  v95[0] = v7 / a5.n128_f32[3];
  v95[1] = a2.n128_f32[1] / a5.n128_f32[3];
  v95[2] = a2.n128_f32[2] / a5.n128_f32[3];
  v95[4] = a3.n128_f32[0] / a5.n128_f32[3];
  v95[5] = a3.n128_f32[1] / a5.n128_f32[3];
  v95[6] = a3.n128_f32[2] / a5.n128_f32[3];
  v95[8] = a4.n128_f32[0] / a5.n128_f32[3];
  v95[9] = a4.n128_f32[1] / a5.n128_f32[3];
  v95[10] = a4.n128_f32[2] / a5.n128_f32[3];
  v96 = a5.n128_u64[0];
  v97 = a5.n128_u32[2];
  v95[3] = 0.0;
  v95[7] = 0.0;
  v95[11] = 0.0;
  v98 = 1065353216;
  v18 = Phase::Determinant<float>(v95);
  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  if (v18 <= 0.00000011921)
  {
LABEL_37:
    v61 = **(Phase::Logger::GetInstance(a1) + 448);
    result = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136319490;
    *&buf[4] = "PHASEObject.mm";
    *&buf[12] = 1024;
    *&buf[14] = 552;
    *&buf[18] = 2048;
    *&buf[20] = v84;
    *&buf[28] = 2048;
    *&buf[30] = v8;
    v111 = 2048;
    v112 = v9;
    v113 = 2048;
    v114 = v91;
    v115 = 2048;
    v116 = v85;
    v117 = 2048;
    v118 = v10;
    v119 = 2048;
    v120 = v11;
    v121 = 2048;
    v122 = v90;
    v123 = 2048;
    v124 = v86;
    v125 = 2048;
    v126 = v12;
    v127 = 2048;
    v128 = v13;
    v129 = 2048;
    v130 = v89;
    v131 = 2048;
    v132 = *&v88;
    v133 = 2048;
    v134 = v87;
    v135 = 2048;
    v136 = v14;
    v137 = 2048;
    v138 = v15;
    v63 = "%25s:%-5d [PHASEObject setTransform]: transform either has a zero in the last row diagonal (and thus can't be normalized), or it's singular (i.e., non-invertible, non-orthogonal): [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]";
    goto LABEL_53;
  }

  v19 = v91 / v15;
  if ((v91 / v15) < 0.0)
  {
    v19 = -(v91 / v15);
  }

  if (v19 <= 0.00000011921)
  {
    goto LABEL_16;
  }

  v20 = v90 / v15;
  if ((v90 / v15) < 0.0)
  {
    v20 = -(v90 / v15);
  }

  if (v20 <= 0.00000011921)
  {
    goto LABEL_16;
  }

  v21 = v89 / v15;
  if ((v89 / v15) < 0.0)
  {
    v21 = -(v89 / v15);
  }

  if (v21 <= 0.00000011921)
  {
LABEL_16:
    v22 = 0;
    v23 = buf;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v25 = 0;
        v26 = &v101;
        v27 = v95;
        do
        {
          if (v25 != i)
          {
            for (j = 0; j != 4; ++j)
            {
              if (v22 != j)
              {
                *v26++ = v27[j];
              }
            }
          }

          ++v25;
          v27 += 4;
        }

        while (v25 != 4);
        v29 = (((((v102 * v106) * v107) + ((v101 * v105) * v109)) + ((v103 * v104) * v108)) + (-(v103 * v105) * v107)) + (-(v102 * v104) * v109);
        v30 = -(v29 + (-(v101 * v106) * v108));
        if (((i ^ v22) & 1) == 0)
        {
          v30 = v29 + (-(v101 * v106) * v108);
        }

        *v23++ = v30;
      }

      ++v22;
    }

    while (v22 != 4);
  }

  v31 = 0;
  v100 = 0;
  v99[12] = 0.0;
  memset(buf, 0, 36);
  v32 = v99;
  do
  {
    v33 = &buf[v31];
    *v33 = *v32;
    v33[2] = v32[2];
    v31 += 12;
    v32 += 4;
  }

  while (v31 != 36);
  v34 = sqrtf(((*buf * *buf) + (*&buf[4] * *&buf[4])) + (*&buf[8] * *&buf[8]));
  v35 = *buf / v34;
  *buf = v35;
  *&buf[4] = *&buf[4] / v34;
  v36 = ((v35 * *&buf[12]) + (*&buf[4] * *&buf[16])) + ((*&buf[8] / v34) * *&buf[20]);
  v37 = *&buf[12] - (v35 * v36);
  v38 = *&buf[16] - (*&buf[4] * v36);
  v39 = *&buf[20] - ((*&buf[8] / v34) * v36);
  v40 = sqrtf((v39 * v39) + ((v37 * v37) + (v38 * v38)));
  v92 = v34;
  *&v93 = v40;
  v41 = v38 / v40;
  *&buf[8] = *&buf[8] / v34;
  *&buf[12] = v37 / v40;
  *&buf[16] = v41;
  *&buf[20] = v39 / v40;
  v42 = ((v35 * *&buf[24]) + (*&buf[4] * *&buf[28])) + (*&buf[8] * *&buf[32]);
  v43 = *&buf[24] - (v35 * v42);
  v44 = *&buf[28] - (*&buf[4] * v42);
  v45 = *&buf[32] - (*&buf[8] * v42);
  v46 = (*&buf[20] * v45) + (((v37 / v40) * v43) + (v41 * v44));
  v47 = v43 - (*&buf[12] * v46);
  v48 = v44 - (v41 * v46);
  v49 = v45 - (*&buf[20] * v46);
  v50 = sqrtf((v49 * v49) + ((v47 * v47) + (v48 * v48)));
  *(&v93 + 1) = v50;
  v51 = v48 / v50;
  v52 = v49 / v50;
  *&buf[24] = v47 / v50;
  *&buf[28] = v51;
  *&buf[32] = v49 / v50;
  if (((*&buf[8] * ((*&buf[12] * v51) - (v41 * (v47 / v50)))) + ((v35 * ((v41 * (v49 / v50)) - (*&buf[20] * v51))) + (*&buf[4] * ((*&buf[20] * (v47 / v50)) - (*&buf[12] * (v49 / v50)))))) < 0.0)
  {
    v53 = 0;
    v54 = &v92;
    do
    {
      *v54 = -*v54;
      ++v54;
      v55 = &buf[v53];
      *v55 = vneg_f32(*&buf[v53]);
      v55[1].f32[0] = -*&buf[v53 + 8];
      v53 += 12;
    }

    while (v53 != 36);
    v52 = *&buf[32];
    v41 = *&buf[16];
    v35 = *buf;
  }

  v83 = v14;
  v56 = v46 / v50;
  v57 = v52 + (v41 + v35);
  if (v57 <= 0.0)
  {
    v64 = v41 > v35;
    if (v52 > *((buf | (4 * v64) | (8 * v64)) + 4 * v64))
    {
      v64 = 2;
    }

    v65 = Phase::Decompose<float>(Phase::Matrix<float,4ul,4ul> const&,Phase::Quaternion<float> &,Phase::Vector<float,3ul> &,Phase::Vector<float,3ul> &,Phase::Vector<float,3ul> &,Phase::Vector<float,4ul> &,float)::sNext[v64];
    v66 = Phase::Decompose<float>(Phase::Matrix<float,4ul,4ul> const&,Phase::Quaternion<float> &,Phase::Vector<float,3ul> &,Phase::Vector<float,3ul> &,Phase::Vector<float,3ul> &,Phase::Vector<float,4ul> &,float)::sNext[v65];
    v67 = &buf[12 * v64];
    v68 = &buf[12 * v65];
    v69 = &buf[12 * v66];
    v70 = sqrtf(((*&v67[4 * v64] - *&v68[4 * v65]) - *&v69[4 * v66]) + 1.0);
    *(&v94 | (4 * v64)) = v70 * 0.5;
    v71 = 0.5 / v70;
    v95[v65 - 1] = v71 * (*&v67[4 * v65] + *&v68[4 * v64]);
    v95[v66 - 1] = v71 * (*&v67[4 * v66] + *&v69[4 * v64]);
    v59 = v71 * (*&v68[4 * v66] - *&v69[4 * v65]);
  }

  else
  {
    v58 = sqrtf(v57 + 1.0);
    v59 = v58 * 0.5;
    v60 = 0.5 / v58;
    *&v94 = vmul_n_f32(vsub_f32(*&buf[20], __PAIR64__(*&buf[8], *&buf[28])), v60);
    *(&v94 + 2) = v60 * (*&buf[4] - *&buf[12]);
  }

  *(&v94 + 3) = v59;
  if (v56 < 0.0)
  {
    v56 = -v56;
  }

  if (v56 > 0.0001)
  {
    goto LABEL_51;
  }

  v72 = v42 / v50;
  if (v72 < 0.0)
  {
    v72 = -v72;
  }

  if (v72 > 0.0001)
  {
    goto LABEL_51;
  }

  v73 = v36 / v40;
  if (v73 < 0.0)
  {
    v73 = -v73;
  }

  if (v73 > 0.0001)
  {
LABEL_51:
    v61 = **(Phase::Logger::GetInstance(a1) + 448);
    result = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136319490;
    *&buf[4] = "PHASEObject.mm";
    *&buf[12] = 1024;
    *&buf[14] = 566;
    *&buf[18] = 2048;
    *&buf[20] = v84;
    *&buf[28] = 2048;
    *&buf[30] = v8;
    v111 = 2048;
    v112 = v9;
    v113 = 2048;
    v114 = v91;
    v115 = 2048;
    v116 = v85;
    v117 = 2048;
    v118 = v10;
    v119 = 2048;
    v120 = v11;
    v121 = 2048;
    v122 = v90;
    v123 = 2048;
    v124 = v86;
    v125 = 2048;
    v126 = v12;
    v127 = 2048;
    v128 = v13;
    v129 = 2048;
    v130 = v89;
    v131 = 2048;
    v132 = *&v88;
    v133 = 2048;
    v134 = v87;
    v135 = 2048;
    v136 = v83;
    v137 = 2048;
    v138 = v15;
    v63 = "%25s:%-5d [PHASEObject setTransform]: transform is skewed (i.e., has non axis-aligned scale): [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]";
    goto LABEL_53;
  }

  v74 = fmaxf(fmaxf(v92, *&v93), *(&v93 + 1));
  v75 = v74 * 0.001;
  v76 = v92 - *&v93;
  if ((v92 - *&v93) < 0.0)
  {
    v76 = -(v92 - *&v93);
  }

  if (v76 > v75)
  {
    goto LABEL_61;
  }

  v77 = v92 - *(&v93 + 1);
  if ((v92 - *(&v93 + 1)) < 0.0)
  {
    v77 = -v77;
  }

  if (v77 <= v75)
  {
    v78 = v88;
    if (fabsf(*&v88) >= 1000000000.0 || fabsf(v87) >= 1000000000.0 || fabsf(v83) >= 1000000000.0)
    {
      v79 = v74;
      v80 = **(Phase::Logger::GetInstance(a1) + 448);
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
      v74 = v79;
      v78 = v88;
      if (v81)
      {
        *buf = 136316162;
        *&buf[4] = "PHASEObject.mm";
        *&buf[12] = 1024;
        *&buf[14] = 596;
        *&buf[18] = 2048;
        *&buf[20] = *&v88;
        *&buf[28] = 2048;
        *&buf[30] = v87;
        v111 = 2048;
        v112 = v83;
        _os_log_impl(&dword_23A302000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEObject setTransform]: WARNING: transform has extremely large translation values [%f, %f, %f]. Expect numerical errors.", buf, 0x30u);
        v74 = v79;
        v78 = v88;
      }
    }

    v82 = DWORD2(v94);
    *a7 = v94;
    *(a7 + 8) = v82;
    *(a7 + 12) = v59;
    *(a7 + 16) = v78;
    *(a7 + 24) = v83;
    *(a7 + 28) = v74;
    return 1;
  }

  else
  {
LABEL_61:
    v61 = **(Phase::Logger::GetInstance(a1) + 448);
    result = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136319490;
      *&buf[4] = "PHASEObject.mm";
      *&buf[12] = 1024;
      *&buf[14] = 584;
      *&buf[18] = 2048;
      *&buf[20] = v84;
      *&buf[28] = 2048;
      *&buf[30] = v8;
      v111 = 2048;
      v112 = v9;
      v113 = 2048;
      v114 = v91;
      v115 = 2048;
      v116 = v85;
      v117 = 2048;
      v118 = v10;
      v119 = 2048;
      v120 = v11;
      v121 = 2048;
      v122 = v90;
      v123 = 2048;
      v124 = v86;
      v125 = 2048;
      v126 = v12;
      v127 = 2048;
      v128 = v13;
      v129 = 2048;
      v130 = v89;
      v131 = 2048;
      v132 = *&v88;
      v133 = 2048;
      v134 = v87;
      v135 = 2048;
      v136 = v83;
      v137 = 2048;
      v138 = v15;
      v63 = "%25s:%-5d [PHASEObject setTransform]: transform has non-uniform scale: [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f], [%f, %f, %f, %f]";
LABEL_53:
      _os_log_impl(&dword_23A302000, v61, OS_LOG_TYPE_ERROR, v63, buf, 0xB2u);
      return 0;
    }
  }

  return result;
}

- (__n128)_storeTransform:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

- (void)setTransform:(simd_float4x4)transform
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(transform.columns[1], *&self->_anon_10[16]), vceqq_f32(transform.columns[0], *self->_anon_10)), vandq_s8(vceqq_f32(transform.columns[2], *&self->_anon_10[32]), vceqq_f32(transform.columns[3], *&self->_anon_10[48])))) & 0x80000000) == 0)
    {
      v20 = xmmword_23A554920;
      v21 = 0.0;
      v22 = 0;
      v23 = 1065353216;
      v5 = [(PHASEObject *)self validateTransform:&v20 outAffine:*transform.columns[0].i64, *transform.columns[1].i64, *transform.columns[2].i64, *transform.columns[3].i64];
      if (v5)
      {
        Instance = Phase::Logger::GetInstance(v5);
        if (*(Instance + 456) == 1)
        {
          v7 = **(Phase::Logger::GetInstance(Instance) + 448);
          v8 = Phase::Logger::GetInstance(v7);
          v9 = os_signpost_id_generate(**(v8 + 448));
          if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v10 = v9;
            if (os_signpost_enabled(v7))
            {
              v11.mData = [(PHASEObject *)self geoEntityHandle];
              *buf = 134220032;
              v25 = self;
              v26 = 2048;
              mData = v11.mData;
              v28 = 2048;
              v29 = *&v20;
              v30 = 2048;
              v31 = *(&v20 + 1);
              v32 = 2048;
              v33 = *(&v20 + 2);
              v34 = 2048;
              v35 = *(&v20 + 3);
              v36 = 2048;
              v37 = v21;
              v38 = 2048;
              v39 = *&v22;
              v40 = 2048;
              v41 = *(&v22 + 1);
              _os_signpost_emit_with_name_impl(&dword_23A302000, v7, OS_SIGNPOST_EVENT, v10, "Phase_API_Transform_Update", "Entity@%p: %llu Update Rotation: [%f, %f, %f, %f], Position: [%f, %f, %f]", buf, 0x5Cu);
            }
          }
        }

        v12 = *([WeakRetained implementation] + 368);
        v13.mData = [(PHASEObject *)self geoEntityHandle];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        (*(*v12 + 296))(v12, v13, &v20, isKindOfClass & 1);
        [(PHASEObject *)self _storeTransform:v16, v17, v18, v19];
      }
    }
  }
}

- (__n128)_convertTransform:(__n128)a3 fromObject:(__n128)a4
{
  v8 = a7;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 11);
    v12 = [WeakRetained rootObject];

    v10 = v12;
  }

  if (v10 != a1)
  {
    [a1 worldTransform];
    v36 = __invert_f4(v35);
    v22 = v36.columns[1];
    v23 = v36.columns[0];
    v24 = v36.columns[3];
    v25 = v36.columns[2];
    if (v9)
    {
      [v9 worldTransform];
      v13 = 0;
      v30 = v14;
      v31 = v15;
      v32 = v16;
      v33 = v17;
      do
      {
        v34[v13 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v30 + v13 * 8))), v22, v30.n128_u64[v13], 1), v25, *(&v30 + v13 * 8), 2), v24, *(&v30 + v13 * 8), 3);
        v13 += 2;
      }

      while (v13 != 8);
      v18 = v34[0];
      v19 = v34[1];
      v24 = v34[3];
      v25 = v34[2];
    }

    else
    {
      v19 = v36.columns[1];
      v18 = v36.columns[0];
    }

    v20 = 0;
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v33 = a5;
    do
    {
      v34[v20 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v30 + v20 * 8))), v19, v30.n128_u64[v20], 1), v25, *(&v30 + v20 * 8), 2), v24, *(&v30 + v20 * 8), 3);
      v20 += 2;
    }

    while (v20 != 8);
    a2 = v34[0];
  }

  return a2;
}

- (void)setWorldTransform:(simd_float4x4)worldTransform
{
  v13 = *worldTransform.columns[3].i64;
  v11 = *worldTransform.columns[1].i64;
  v12 = *worldTransform.columns[2].i64;
  v10 = *worldTransform.columns[0].i64;
  v9 = [(PHASEObject *)self parent];
  if (v9)
  {
    v3 = [(PHASEObject *)self parent];
    [v3 _convertTransform:0 fromObject:{v10, v11, v12, v13}];
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
  }

  [(PHASEObject *)self setTransform:v10, v11, v12, v13];
  if (v9)
  {
  }
}

- (simd_float4x4)worldTransform
{
  v3 = [(PHASEObject *)self parent];
  v4 = v3;
  if (v3)
  {
    [v3 worldTransform];
    v26 = v6;
    v28 = v5;
    v22 = v8;
    v24 = v7;
    [(PHASEObject *)self transform];
    v9 = 0;
    v30[0] = v10;
    v30[1] = v11;
    v30[2] = v12;
    v30[3] = v13;
    do
    {
      v31[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(v30[v9])), v26, *&v30[v9], 1), v24, v30[v9], 2), v22, v30[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    v27 = v31[1];
    v29 = v31[0];
    v23 = v31[3];
    v25 = v31[2];
  }

  else
  {
    [(PHASEObject *)self transform];
    v27 = v15;
    v29 = v14;
    v23 = v17;
    v25 = v16;
  }

  v19 = v27;
  v18 = v29;
  v21 = v23;
  v20 = v25;
  result.columns[3] = v21;
  result.columns[2] = v20;
  result.columns[1] = v19;
  result.columns[0] = v18;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (([(PHASEObject *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    std::terminate();
  }

  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(PHASEObject *)self engine];
  v7 = [v5 initWithEngine:v6];

  [(PHASEObject *)self transform];
  [v7 setTransform:?];
  return v7;
}

- (PHASEObject)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (simd_float4x4)transform
{
  v2 = *self->_anon_10;
  v3 = *&self->_anon_10[16];
  v4 = *&self->_anon_10[32];
  v5 = *&self->_anon_10[48];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end