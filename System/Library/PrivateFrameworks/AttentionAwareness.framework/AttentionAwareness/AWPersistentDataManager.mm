@interface AWPersistentDataManager
+ (BOOL)AWPersistentDataExists:(int *)a3;
+ (BOOL)truncateAWPersistentData:(int *)a3 error:(id *)a4;
+ (BOOL)validateAWPersistentDataHeader:(id *)a3;
+ (id)sharedManager;
+ (void)initAWPersistentDataHeader:(id *)a3;
- (AWPersistentDataManager)init;
- (BOOL)checkPreconditions:(id *)a3;
- (BOOL)isValidIndexForConnection:(id)a3 index:(int)a4 error:(id *)a5;
- (int)nextFreeIndex;
- (int)openWithConnection:(id)a3 error:(id *)a4;
- (void)loadPersistentData;
@end

@implementation AWPersistentDataManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_221);
  }

  v3 = sharedManager_manager;

  return v3;
}

- (int)nextFreeIndex
{
  v2 = *MEMORY[0x1E69E9AC8] - 32;
  if (v2 < 0x58)
  {
LABEL_5:
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = 0;
    shm_obj = self->_shm_obj;
    v6 = v2 / 0x58;
    v7 = (shm_obj + 104);
    while (1)
    {
      v8 = *v7;
      v7 += 11;
      if (!v8)
      {
        break;
      }

      if (v6 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  return v4;
}

- (int)openWithConnection:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(AWPersistentDataManager *)self checkPreconditions:a4])
  {
LABEL_7:
    v8 = -1;
    goto LABEL_29;
  }

  v7 = [(AWPersistentDataManager *)self nextFreeIndex];
  if (v7 == -1)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:28 userInfo:0];
    }

    goto LABEL_7;
  }

  v8 = v7;
  v9 = self->_shm_obj + 88 * v7;
  *(v9 + 2) = 0u;
  v10 = v9 + 32;
  *(v10 + 10) = 0;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 9) = absTimeNS();
  *(v10 + 20) = [v6 processIdentifier];
  if (v6)
  {
    [v6 auditToken];
  }

  else
  {
    memset(v25, 0, 32);
  }

  *(v10 + 21) = audit_token_to_pidversion(v25);
  if (currentLogLevel == 5)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = absTimeNS();
      if (v12 == -1)
      {
        v13 = INFINITY;
      }

      else
      {
        v13 = v12 / 1000000000.0;
      }

      v18 = *(v10 + 20);
      *v25 = 134218496;
      *&v25[4] = v13;
      *&v25[12] = 1024;
      *&v25[14] = v8;
      *&v25[18] = 1024;
      *&v25[20] = v18;
      v19 = "%13.5f: AW SHARED MEM: opening index %d for client with pid %d";
      v20 = v11;
      v21 = 24;
LABEL_27:
      _os_log_impl(&dword_1BB2EF000, v20, OS_LOG_TYPE_DEFAULT, v19, v25, v21);
    }

LABEL_28:

    goto LABEL_29;
  }

  if (currentLogLevel >= 6)
  {
    v11 = _AALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v14 = i;
        }

        else if (!*(i - 1))
        {
          v16 = absTimeNS();
          if (v16 == -1)
          {
            v17 = INFINITY;
          }

          else
          {
            v17 = v16 / 1000000000.0;
          }

          v22 = *(v10 + 20);
          *v25 = 136316162;
          *&v25[4] = v14;
          *&v25[12] = 1024;
          *&v25[14] = 438;
          *&v25[18] = 2048;
          *&v25[20] = v17;
          *&v25[28] = 1024;
          *&v25[30] = v8;
          v26 = 1024;
          v27 = v22;
          v19 = "%30s:%-4d: %13.5f: AW SHARED MEM: opening index %d for client with pid %d";
          v20 = v11;
          v21 = 40;
          goto LABEL_27;
        }
      }
    }

    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isValidIndexForConnection:(id)a3 index:(int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 < 0 || a4 >= (*MEMORY[0x1E69E9AC8] - 32) / 0x58uLL)
  {
    if (!a5)
    {
      goto LABEL_17;
    }

    v13 = 34;
  }

  else
  {
    v10 = self->_shm_obj + 88 * a4;
    if (*(v10 + 13))
    {
      v11 = *(v10 + 28);
      if (v11 == [v8 processIdentifier])
      {
        v12 = *(v10 + 29);
        if (v9)
        {
          [v9 auditToken];
        }

        else
        {
          memset(&v16, 0, sizeof(v16));
        }

        if (v12 == audit_token_to_pidversion(&v16))
        {
          v14 = 1;
          goto LABEL_18;
        }
      }

      if (a5)
      {
        v13 = 1;
        goto LABEL_9;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    if (!a5)
    {
      goto LABEL_17;
    }

    v13 = 22;
  }

LABEL_9:
  [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v13 userInfo:{0, *v16.val, *&v16.val[4]}];
  *a5 = v14 = 0;
LABEL_18:

  return v14;
}

- (BOOL)checkPreconditions:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  shm_obj = self->_shm_obj;
  if (a3 && !shm_obj)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  return shm_obj != 0;
}

- (void)loadPersistentData
{
  v71 = *MEMORY[0x1E69E9840];
  v64 = -1;
  v3 = [objc_opt_class() AWPersistentDataExists:&v64];
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      v11 = "false";
      *buf = 134218498;
      v66 = v6;
      v67 = 2080;
      *v68 = "com.apple.AttentionAwareness";
      if (v3)
      {
        v11 = "true";
      }

      *&v68[8] = 2080;
      *&v68[10] = v11;
      v12 = "%13.5f: AW SHARED MEM: found %s shm object: %s";
      v13 = v4;
      v14 = 32;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v7 = i;
      }

      else if (!*(i - 1))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        v15 = "false";
        *buf = 136316162;
        v66 = *&v7;
        v67 = 1024;
        if (v3)
        {
          v15 = "true";
        }

        *v68 = 239;
        *&v68[4] = 2048;
        *&v68[6] = v10;
        *&v68[14] = 2080;
        *&v68[16] = "com.apple.AttentionAwareness";
        *&v68[24] = 2080;
        *&v68[26] = v15;
        v12 = "%30s:%-4d: %13.5f: AW SHARED MEM: found %s shm object: %s";
        v13 = v4;
        v14 = 48;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_24:

        break;
      }
    }
  }

  v16 = v64;
  if (v3)
  {
    if (v64 != -1)
    {
      __assert_rtn("[AWPersistentDataManager loadPersistentData]", "PersistentDataManager.m", 242, "fd == -1");
    }

    v16 = shm_open("com.apple.AttentionAwareness", 514, 384);
    v64 = v16;
  }

  if (v16 == -1)
  {
    if (currentLogLevel < 3)
    {
      v18 = 0;
      goto LABEL_74;
    }

    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v48 = absTimeNS();
      if (v48 == -1)
      {
        v49 = INFINITY;
      }

      else
      {
        v49 = v48 / 1000000000.0;
      }

      v55 = __error();
      v56 = strerror(*v55);
      *buf = 134218498;
      v66 = v49;
      v67 = 2080;
      *v68 = "com.apple.AttentionAwareness";
      *&v68[8] = 2080;
      *&v68[10] = v56;
      _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, "%13.5f: AW SHARED MEM: failed to open %s shm object: %s", buf, 0x20u);
    }

    v18 = 0;
    goto LABEL_73;
  }

  v63 = 0;
  v17 = [objc_opt_class() truncateAWPersistentData:&v64 error:&v63];
  v18 = v63;
  if ((v17 & 1) == 0)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v27 = absTimeNS();
    if (v27 == -1)
    {
      v28 = INFINITY;
    }

    else
    {
      v28 = v27 / 1000000000.0;
    }

    *buf = 134218498;
    v66 = v28;
    v67 = 2080;
    *v68 = "com.apple.AttentionAwareness";
    *&v68[8] = 2112;
    *&v68[10] = v18;
    v57 = "%13.5f: AW SHARED MEM: failed to truncate %s shm object: %@";
    goto LABEL_83;
  }

  v19 = MEMORY[0x1E69E9AC8];
  v20 = mmap(0, *MEMORY[0x1E69E9AC8], 3, 1, v64, 0);
  self->_shm_obj = v20;
  if (v20 == -1)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    v29 = absTimeNS();
    if (v29 == -1)
    {
      v30 = INFINITY;
    }

    else
    {
      v30 = v29 / 1000000000.0;
    }

    v58 = __error();
    v59 = strerror(*v58);
    *buf = 134218498;
    v66 = v30;
    v67 = 2080;
    *v68 = "com.apple.AttentionAwareness";
    *&v68[8] = 2080;
    *&v68[10] = v59;
    v57 = "%13.5f: AW SHARED MEM: failed to map %s shm object: %s";
LABEL_83:
    _os_log_error_impl(&dword_1BB2EF000, v26, OS_LOG_TYPE_ERROR, v57, buf, 0x20u);
    goto LABEL_73;
  }

  v21 = v20;
  if (v3)
  {
    if ([objc_opt_class() validateAWPersistentDataHeader:v20])
    {
      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      timer = self->_timer;
      self->_timer = v22;

      v24 = self->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __45__AWPersistentDataManager_loadPersistentData__block_invoke;
      handler[3] = &unk_1E7F37F50;
      handler[4] = self;
      handler[5] = v21;
      dispatch_source_set_event_handler(v24, handler);
      v25 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(self->_timer, v25, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      dispatch_resume(self->_timer);
      goto LABEL_52;
    }

    if (currentLogLevel >= 3)
    {
      v31 = _AALog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v60 = absTimeNS();
        if (v60 == -1)
        {
          v61 = INFINITY;
        }

        else
        {
          v61 = v60 / 1000000000.0;
        }

        *buf = 134218242;
        v66 = v61;
        v67 = 2080;
        *v68 = "com.apple.AttentionAwareness";
        _os_log_error_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_ERROR, "%13.5f: AW SHARED MEM: failed to validate %s shm object", buf, 0x16u);
      }
    }
  }

  [objc_opt_class() initAWPersistentDataHeader:v21];
  if ((*v19 - 32) >= 0x58)
  {
    v32 = 0;
    v33 = v21 + 4;
    do
    {
      v33[10] = 0;
      *(v33 + 3) = 0uLL;
      *(v33 + 4) = 0uLL;
      *(v33 + 1) = 0uLL;
      *(v33 + 2) = 0uLL;
      *v33 = 0uLL;
      v33 += 11;
      ++v32;
    }

    while (v32 < (*v19 - 32) / 0x58uLL);
  }

LABEL_52:
  self->_loadAbsTime = absTimeNS();
  if (currentLogLevel == 5)
  {
    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v34 = absTimeNS();
      if (v34 == -1)
      {
        v35 = INFINITY;
      }

      else
      {
        v35 = v34 / 1000000000.0;
      }

      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *v21;
      v43 = v21[1];
      v44 = (*v19 - 32) / 0x58uLL;
      *buf = 134219266;
      v66 = v35;
      v67 = 2112;
      *v68 = v41;
      *&v68[8] = 2080;
      *&v68[10] = "com.apple.AttentionAwareness";
      *&v68[18] = 2048;
      *&v68[20] = v42;
      *&v68[28] = 2048;
      *&v68[30] = v43;
      *&v68[38] = 2048;
      *&v68[40] = v44;
      v45 = "%13.5f: AW SHARED MEM: %@ created successfully with %s shm object: shm version %llu, shm size %llu, shm max clients %lu";
      v46 = v26;
      v47 = 62;
LABEL_72:
      _os_log_impl(&dword_1BB2EF000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
    }
  }

  else
  {
    if (currentLogLevel < 6)
    {
      goto LABEL_74;
    }

    v26 = _AALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v36 = j;
        }

        else if (!*(j - 1))
        {
          v38 = absTimeNS();
          if (v38 == -1)
          {
            v39 = INFINITY;
          }

          else
          {
            v39 = v38 / 1000000000.0;
          }

          v50 = objc_opt_class();
          v41 = NSStringFromClass(v50);
          v51 = *v21;
          v52 = v21[1];
          v53 = (*v19 - 32) / 0x58uLL;
          *buf = 136316930;
          v66 = *&v36;
          v67 = 1024;
          *v68 = 329;
          *&v68[4] = 2048;
          *&v68[6] = v39;
          *&v68[14] = 2112;
          *&v68[16] = v41;
          *&v68[24] = 2080;
          *&v68[26] = "com.apple.AttentionAwareness";
          *&v68[34] = 2048;
          *&v68[36] = v51;
          *&v68[44] = 2048;
          *&v68[46] = v52;
          v69 = 2048;
          v70 = v53;
          v45 = "%30s:%-4d: %13.5f: AW SHARED MEM: %@ created successfully with %s shm object: shm version %llu, shm size %llu, shm max clients %lu";
          v46 = v26;
          v47 = 78;
          goto LABEL_72;
        }
      }
    }
  }

LABEL_73:

LABEL_74:
  if (v64 != -1)
  {
    close(v64);
  }

  v54 = *MEMORY[0x1E69E9840];
}

void __45__AWPersistentDataManager_loadPersistentData__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9AC8];
  v2 = *MEMORY[0x1E69E9AC8];
  v3 = 0x1EDC16000uLL;
  if ((*MEMORY[0x1E69E9AC8] - 32) >= 0x58)
  {
    v6 = 0;
    v4 = 0;
    v7 = &dword_1BB2EF000;
    do
    {
      v8 = *(a1 + 40) + 88 * v6;
      v9 = *(v8 + 104);
      if (v9 && *(*(a1 + 32) + 32) > v9)
      {
        v10 = *(v3 + 2416);
        if (v10 == 5)
        {
          v11 = _AALog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = absTimeNS();
            if (v12 == -1)
            {
              v13 = INFINITY;
            }

            else
            {
              v13 = v12 / 1000000000.0;
            }

            v20 = *(v8 + 112);
            *buf = 134218496;
            v35 = v13;
            v36 = 1024;
            v37 = v6;
            v38 = 1024;
            LODWORD(v39) = v20;
            _os_log_impl(v7, v11, OS_LOG_TYPE_DEFAULT, "%13.5f: AW SHARED MEM: reclaiming index %d from client with pid %d", buf, 0x18u);
          }

LABEL_24:
        }

        else if (v10 >= 6)
        {
          v11 = _AALog();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          v14 = v3;
          v15 = v7;
          v16 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
          for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++i)
          {
            if (*(i - 1) == 47)
            {
              v16 = i;
            }

            else if (!*(i - 1))
            {
              v18 = absTimeNS();
              if (v18 == -1)
              {
                v19 = INFINITY;
              }

              else
              {
                v19 = v18 / 1000000000.0;
              }

              v21 = *(v8 + 112);
              *buf = 136316162;
              v35 = *&v16;
              v36 = 1024;
              v37 = 291;
              v38 = 2048;
              v39 = *&v19;
              v40 = 1024;
              v41 = v6;
              v42 = 1024;
              LODWORD(v43) = v21;
              v7 = v15;
              _os_log_impl(v15, v11, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: AW SHARED MEM: reclaiming index %d from client with pid %d", buf, 0x28u);
              v3 = v14;
              v1 = MEMORY[0x1E69E9AC8];
              goto LABEL_24;
            }
          }
        }

        *(v8 + 112) = 0;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 32) = 0u;
        ++v4;
        v2 = *v1;
      }

      ++v6;
    }

    while (v6 < (v2 - 32) / 0x58uLL);
  }

  else
  {
    v4 = 0;
  }

  v22 = *(v3 + 2416);
  if (v22 == 5)
  {
    v23 = _AALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = absTimeNS();
      if (v24 == -1)
      {
        v25 = INFINITY;
      }

      else
      {
        v25 = v24 / 1000000000.0;
      }

      *buf = 134218496;
      v35 = v25;
      v36 = 1024;
      v37 = v4;
      v38 = 2048;
      v39 = 10;
      v30 = "%13.5f: AW SHARED MEM: reclaimed %d client entries %llu sec after AW service relaunch";
      v31 = v23;
      v32 = 28;
LABEL_45:
      _os_log_impl(&dword_1BB2EF000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v22 >= 6)
  {
    v23 = _AALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m";
      for (j = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/PersistentDataManager.m"; ; ++j)
      {
        if (*(j - 1) == 47)
        {
          v26 = j;
        }

        else if (!*(j - 1))
        {
          v28 = absTimeNS();
          if (v28 == -1)
          {
            v29 = INFINITY;
          }

          else
          {
            v29 = v28 / 1000000000.0;
          }

          *buf = 136316162;
          v35 = *&v26;
          v36 = 1024;
          v37 = 297;
          v38 = 2048;
          v39 = *&v29;
          v40 = 1024;
          v41 = v4;
          v42 = 2048;
          v43 = 10;
          v30 = "%30s:%-4d: %13.5f: AW SHARED MEM: reclaimed %d client entries %llu sec after AW service relaunch";
          v31 = v23;
          v32 = 44;
          goto LABEL_45;
        }
      }
    }

    goto LABEL_46;
  }

LABEL_47:
  v33 = *MEMORY[0x1E69E9840];
}

- (AWPersistentDataManager)init
{
  v6.receiver = self;
  v6.super_class = AWPersistentDataManager;
  v2 = [(AWPersistentDataManager *)&v6 init];
  if (v2)
  {
    v3 = awQueue(1);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (BOOL)truncateAWPersistentData:(int *)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __assert_rtn("+[AWPersistentDataManager truncateAWPersistentData:error:]", "PersistentDataManager.m", 134, "fildes");
  }

  v5 = *a3;
  if (*a3 == -1)
  {
    __assert_rtn("+[AWPersistentDataManager truncateAWPersistentData:error:]", "PersistentDataManager.m", 135, "*fildes != -1");
  }

  memset(&v41, 0, sizeof(v41));
  if (fstat(v5, &v41) == -1)
  {
    if (currentLogLevel < 3)
    {
      goto LABEL_32;
    }

    v10 = _AALog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v22 = absTimeNS();
    if (v22 == -1)
    {
      v23 = INFINITY;
    }

    else
    {
      v23 = v22 / 1000000000.0;
    }

    v24 = __error();
    v25 = strerror(*v24);
    *buf = 134218498;
    v43 = v23;
    v44 = 2080;
    v45 = "com.apple.AttentionAwareness";
    v46 = 2080;
    v47 = v25;
    v26 = "%13.5f: AW SHARED MEM: failed to fstat %s shm object: %s";
    goto LABEL_40;
  }

  v7 = MEMORY[0x1E69E9AC8];
  v8 = *MEMORY[0x1E69E9AC8];
  if (v41.st_size && v41.st_size != v8)
  {
    if (shm_unlink("com.apple.AttentionAwareness") == -1)
    {
      if (currentLogLevel < 3)
      {
        goto LABEL_32;
      }

      v12 = _AALog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v13 = absTimeNS();
      if (v13 == -1)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v13 / 1000000000.0;
      }

      v31 = __error();
      v32 = strerror(*v31);
      *buf = 134218498;
      v43 = v14;
      v44 = 2080;
      v45 = "com.apple.AttentionAwareness";
      v46 = 2080;
      v47 = v32;
      v33 = "%13.5f: AW SHARED MEM: failed to unlink %s shm object: %s";
    }

    else
    {
      if (close(*a3) != -1)
      {
        v9 = shm_open("com.apple.AttentionAwareness", 514, 384);
        *a3 = v9;
        if (v9 != -1)
        {
          v8 = *v7;
          goto LABEL_15;
        }

        if (currentLogLevel < 3)
        {
          goto LABEL_32;
        }

        v10 = _AALog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v17 = absTimeNS();
        if (v17 == -1)
        {
          v18 = INFINITY;
        }

        else
        {
          v18 = v17 / 1000000000.0;
        }

        v39 = __error();
        v40 = strerror(*v39);
        *buf = 134218498;
        v43 = v18;
        v44 = 2080;
        v45 = "com.apple.AttentionAwareness";
        v46 = 2080;
        v47 = v40;
        v26 = "%13.5f: AW SHARED MEM: failed to reopen %s shm object: %s";
LABEL_40:
        v27 = v10;
        v28 = 32;
LABEL_41:
        _os_log_error_impl(&dword_1BB2EF000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
        goto LABEL_12;
      }

      if (currentLogLevel < 3)
      {
        goto LABEL_32;
      }

      v12 = _AALog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        goto LABEL_32;
      }

      v29 = absTimeNS();
      if (v29 == -1)
      {
        v30 = INFINITY;
      }

      else
      {
        v30 = v29 / 1000000000.0;
      }

      v34 = __error();
      v35 = strerror(*v34);
      *buf = 134218498;
      v43 = v30;
      v44 = 2080;
      v45 = "com.apple.AttentionAwareness";
      v46 = 2080;
      v47 = v35;
      v33 = "%13.5f: AW SHARED MEM: failed to close open fildes for %s shm object: %s";
    }

    _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, v33, buf, 0x20u);
    goto LABEL_23;
  }

  if (v41.st_size)
  {
LABEL_16:
    result = 1;
    goto LABEL_35;
  }

  v9 = *a3;
LABEL_15:
  if (ftruncate(v9, v8) != -1)
  {
    goto LABEL_16;
  }

  if (currentLogLevel >= 3)
  {
    v10 = _AALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = absTimeNS();
      if (v15 == -1)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = v15 / 1000000000.0;
      }

      v36 = *v7;
      v37 = __error();
      v38 = strerror(*v37);
      *buf = 134218754;
      v43 = v16;
      v44 = 2080;
      v45 = "com.apple.AttentionAwareness";
      v46 = 2048;
      v47 = v36;
      v48 = 2080;
      v49 = v38;
      v26 = "%13.5f: AW SHARED MEM: failed to truncate %s shm object to %lu: %s";
      v27 = v10;
      v28 = 42;
      goto LABEL_41;
    }

LABEL_12:
  }

LABEL_32:
  if (a4)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    v20 = v19;
    result = 0;
    *a4 = v19;
  }

  else
  {
    result = 0;
  }

LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)validateAWPersistentDataHeader:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __assert_rtn("+[AWPersistentDataManager validateAWPersistentDataHeader:]", "PersistentDataManager.m", 99, "hdr");
  }

  if (a3->var0 != 1)
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = absTimeNS();
        if (v7 == -1)
        {
          v8 = INFINITY;
        }

        else
        {
          v8 = v7 / 1000000000.0;
        }

        var0 = a3->var0;
        v22 = 134218496;
        v23 = v8;
        v24 = 2048;
        v25 = var0;
        v26 = 2048;
        v27 = 1;
        v16 = "%13.5f: AW SHARED MEM: unexpected header version %llu, expected %llu";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (a3->var1 != 32)
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = absTimeNS();
        if (v9 == -1)
        {
          v10 = INFINITY;
        }

        else
        {
          v10 = v9 / 1000000000.0;
        }

        var1 = a3->var1;
        v22 = 134218496;
        v23 = v10;
        v24 = 2048;
        v25 = var1;
        v26 = 2048;
        v27 = 32;
        v16 = "%13.5f: AW SHARED MEM: unexpected header size %llu, expected %llu";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v4 = MEMORY[0x1E69E9AC8];
  if (a3->var2 != *MEMORY[0x1E69E9AC8])
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = absTimeNS();
        if (v11 == -1)
        {
          v12 = INFINITY;
        }

        else
        {
          v12 = v11 / 1000000000.0;
        }

        var2 = a3->var2;
        v19 = *v4;
        v22 = 134218496;
        v23 = v12;
        v24 = 2048;
        v25 = var2;
        v26 = 2048;
        v27 = v19;
        v16 = "%13.5f: AW SHARED MEM: unexpected shared memory size %llu, expected %llu";
        goto LABEL_31;
      }

LABEL_32:
    }

LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  if (a3->var3 != 88)
  {
    if (currentLogLevel >= 3)
    {
      v6 = _AALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        var3 = a3->var3;
        v22 = 134218496;
        v23 = v14;
        v24 = 2048;
        v25 = var3;
        v26 = 2048;
        v27 = 88;
        v16 = "%13.5f: AW SHARED MEM: unexpected client size %llu, expected %llu";
LABEL_31:
        _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, v16, &v22, 0x20u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  result = 1;
LABEL_34:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)initAWPersistentDataHeader:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("+[AWPersistentDataManager initAWPersistentDataHeader:]", "PersistentDataManager.m", 90, "hdr");
  }

  *&a3->var0 = xmmword_1BB32B2B0;
  a3->var2 = *MEMORY[0x1E69E9AC8];
  a3->var3 = 88;
}

+ (BOOL)AWPersistentDataExists:(int *)a3
{
  if (!a3)
  {
    __assert_rtn("+[AWPersistentDataManager AWPersistentDataExists:]", "PersistentDataManager.m", 77, "fildes");
  }

  v4 = shm_open("com.apple.AttentionAwareness", 2562, 384);
  *a3 = v4;
  return v4 == -1 && *__error() == 17;
}

uint64_t __40__AWPersistentDataManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(AWPersistentDataManager);

  return MEMORY[0x1EEE66BB8]();
}

@end