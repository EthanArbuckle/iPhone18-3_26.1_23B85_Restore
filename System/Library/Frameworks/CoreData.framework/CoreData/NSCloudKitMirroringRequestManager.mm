@interface NSCloudKitMirroringRequestManager
- (BOOL)enqueueRequest:(uint64_t *)a3 error:;
- (id)dequeueNextRequest;
- (void)dealloc;
- (void)dequeueAllPendingRequests;
- (void)requestFinished:(uint64_t)a1;
@end

@implementation NSCloudKitMirroringRequestManager

- (void)dealloc
{
  self->_pendingImportRequest = 0;

  self->_pendingExportRequest = 0;
  self->_pendingSetupRequest = 0;

  self->_pendingDelegateResetRequest = 0;
  self->_pendingResetRequest = 0;

  self->_pendingFetchRecordsRequest = 0;
  self->_pendingResetMetadataRequest = 0;

  self->_pendingSerializationRequest = 0;
  self->_pendingInitializeSchemaRequest = 0;

  self->_pendingExportProgressRequest = 0;
  self->_pendingAcceptShareInvitationRequest = 0;

  self->_activeRequest = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringRequestManager;
  [(NSCloudKitMirroringRequestManager *)&v3 dealloc];
}

- (id)dequeueNextRequest
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a1[12])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[12];
      v11 = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Dequeue called during an active request: %@\n", &v11, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v10 = a1[12];
      v11 = 138412290;
      v12 = v10;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: Dequeue called during an active request: %@", &v11, 0xCu);
    }
  }

  v5 = a1 + 4;
  v4 = a1[4];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 3;
  v4 = a1[3];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 9;
  v4 = a1[9];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 5;
  v4 = a1[5];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 7;
  v4 = a1[7];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 11;
  v4 = a1[11];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 8;
  v4 = a1[8];
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  if (v4 || (v5 = a1 + 2, (v4 = a1[2]) != 0) || (v5 = a1 + 6, (v4 = a1[6]) != 0) || (v5 = a1 + 10, (v4 = a1[10]) != 0))
  {
LABEL_18:
    v6 = v4;

    *v5 = 0;
    if (v6)
    {
      a1[12] = v6;
    }
  }

  else
  {
LABEL_21:
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)enqueueRequest:(uint64_t *)a3 error:
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_60;
  }

  v5 = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[3])
    {
      v5[3] = a2;
LABEL_26:
      result = 1;
      goto LABEL_60;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[6])
    {
      v5[6] = a2;
      goto LABEL_26;
    }

LABEL_10:
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A250];
    v34[0] = *MEMORY[0x1E696A588];
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    *buf = [v8 stringWithFormat:@"Request '%@' was cancelled because there is already a pending request of type '%@'.", a2, NSStringFromClass(v9)];
    v10 = [v6 errorWithDomain:v7 code:134417 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", buf, v34, 1)}];
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        result = 0;
        *a3 = v11;
        goto LABEL_60;
      }

LABEL_59:
      result = 0;
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[1])
    {
      v5[1] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v5[2];
    if (!v12)
    {
      v5[2] = a2;
      goto LABEL_26;
    }

    if (a2 && *(a2 + 56) == 1)
    {
      -[NSCloudKitMirroringRequest addContainerBlock:](v12, [a2 requestCompletionBlock]);
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[5])
    {
      v5[5] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[7])
    {
      v5[7] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[4])
    {
      v5[4] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[8])
    {
      v5[8] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[9])
    {
      v5[9] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[10])
    {
      v5[10] = a2;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v5[11])
    {
      v5[11] = a2;
      goto LABEL_26;
    }

    if (a2 && *(a2 + 56) == 1)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF70]);
      v14 = v5[11];
      if (v14)
      {
        v15 = *(v14 + 80);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v13 initWithArray:v15];
      [v16 addObjectsFromArray:*(a2 + 80)];
      v17 = objc_alloc(MEMORY[0x1E695DF70]);
      v18 = v5[11];
      if (v18)
      {
        v19 = *(v18 + 88);
      }

      else
      {
        v19 = 0;
      }

      v20 = [v17 initWithArray:v19];
      [v20 addObjectsFromArray:*(a2 + 88)];
      v22 = v5[11];
      if (v22 && (objc_setProperty_nonatomic_copy(v22, v21, v16, 80), (v24 = v5[11]) != 0))
      {
        objc_setProperty_nonatomic_copy(v24, v23, v20, 88);
        v25 = v5[11];
      }

      else
      {
        v25 = 0;
      }

      -[NSCloudKitMirroringRequest addContainerBlock:](v25, [a2 requestCompletionBlock]);

      goto LABEL_26;
    }

    goto LABEL_10;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown request class: %@\n", buf, 0xCu);
  }

  v27 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *&buf[4] = a2;
    _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Unknown request class: %@", buf, 0xCu);
  }

LABEL_55:
  v28 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringRequestManager.m";
    v32 = 1024;
    v33 = 164;
    _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v29 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringRequestManager.m";
    v32 = 1024;
    v33 = 164;
    _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_59;
  }

LABEL_60:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)requestFinished:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      if (v4 == a2)
      {

        *(a1 + 96) = 0;
        goto LABEL_14;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 96);
        v15 = 138412546;
        v16 = v14;
        v17 = 2112;
        v18 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: requestFinished called with a different request than the active request: %@\nCalled with: %@\n", &v15, 0x16u);
      }

      v6 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = *(a1 + 96);
        v15 = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = a2;
        v8 = "CoreData: requestFinished called with a different request than the active request: %@\nCalled with: %@";
        v9 = v6;
        v10 = 22;
LABEL_12:
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, v8, &v15, v10);
      }
    }

    else
    {
      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = a2;
        _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: requestFinished called without an active request: %@\n", &v15, 0xCu);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412290;
        v16 = a2;
        v8 = "CoreData: requestFinished called without an active request: %@";
        v9 = v12;
        v10 = 12;
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)dequeueAllPendingRequests
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1[4])
  {
    [v2 addObject:?];

    a1[4] = 0;
  }

  if (a1[3])
  {
    [v3 addObject:?];

    a1[3] = 0;
  }

  if (a1[9])
  {
    [v3 addObject:?];

    a1[9] = 0;
  }

  if (a1[5])
  {
    [v3 addObject:?];

    a1[5] = 0;
  }

  if (a1[7])
  {
    [v3 addObject:?];

    a1[7] = 0;
  }

  if (a1[8])
  {
    [v3 addObject:?];

    a1[8] = 0;
  }

  if (a1[1])
  {
    [v3 addObject:?];

    a1[1] = 0;
  }

  if (a1[2])
  {
    [v3 addObject:?];

    a1[2] = 0;
  }

  if (a1[6])
  {
    [v3 addObject:?];

    a1[6] = 0;
  }

  if (a1[10])
  {
    [v3 addObject:?];

    a1[10] = 0;
  }

  if (a1[11])
  {
    [v3 addObject:?];

    a1[11] = 0;
  }

  return v3;
}

@end