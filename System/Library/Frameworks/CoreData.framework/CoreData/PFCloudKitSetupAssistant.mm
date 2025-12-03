@interface PFCloudKitSetupAssistant
- (PFCloudKitSetupAssistant)initWithSetupRequest:(id)request mirroringOptions:(id)options accountMonitor:(id)monitor observedStore:(id)store;
- (uint64_t)_deleteZone:(void *)zone error:;
- (uint64_t)_initializeCloudKitForObservedStore:(_BYTE *)store andNoteMetadataInitialization:;
- (uint64_t)_saveZone:(void *)zone error:;
- (void)beginActivityForPhase:(uint64_t)phase;
- (void)dealloc;
- (void)endActivityForPhase:(uint64_t)phase withError:;
@end

@implementation PFCloudKitSetupAssistant

- (void)dealloc
{
  self->_container = 0;

  self->_database = 0;
  self->_databaseSubscription = 0;

  self->_largeBlobDirectoryURL = 0;
  cloudKitSemaphore = self->_cloudKitSemaphore;
  if (cloudKitSemaphore)
  {
    dispatch_release(cloudKitSemaphore);
  }

  v4.receiver = self;
  v4.super_class = PFCloudKitSetupAssistant;
  [(PFCloudKitSetupAssistant *)&v4 dealloc];
}

- (PFCloudKitSetupAssistant)initWithSetupRequest:(id)request mirroringOptions:(id)options accountMonitor:(id)monitor observedStore:(id)store
{
  v14.receiver = self;
  v14.super_class = PFCloudKitSetupAssistant;
  v10 = [(PFCloudKitSetupAssistant *)&v14 init];
  if (v10)
  {
    v10->_setupRequest = request;
    v10->_cloudKitSemaphore = dispatch_semaphore_create(0);
    v10->_mirroringOptions = options;
    v10->_accountMonitor = monitor;
    mirroringOptions = v10->_mirroringOptions;
    if (mirroringOptions)
    {
      storeMonitorProvider = mirroringOptions->_storeMonitorProvider;
    }

    else
    {
      storeMonitorProvider = 0;
    }

    v10->_storeMonitor = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:store inTransactionWithLabel:?];
  }

  return v10;
}

- (uint64_t)_initializeCloudKitForObservedStore:(_BYTE *)store andNoteMetadataInitialization:
{
  v238 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_123;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    v7 = *(v6 + 12);
  }

  else
  {
    v7 = 0;
  }

  *v199 = 0;
  *&v199[8] = v199;
  *&v199[16] = 0x2020000000;
  v199[24] = 1;
  *v212 = 0;
  *&v212[8] = v212;
  *&v212[16] = 0x3052000000;
  *&v212[24] = __Block_byref_object_copy__27;
  *&v212[32] = __Block_byref_object_dispose__27;
  v213 = 0;
  [(PFCloudKitSetupAssistant *)result beginActivityForPhase:?];
  v8 = *(v5 + 56);
  *v221 = MEMORY[0x1E69E9820];
  *&v221[8] = 3221225472;
  *&v221[16] = __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke;
  *&v221[24] = &unk_1E6EC1A00;
  *&v221[32] = v8;
  v222 = v5;
  v223 = v199;
  v224 = v212;
  [(PFCloudKitStoreMonitor *)v8 performBlock:v221];
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v212[8] + 40) withError:?];
  if (*(*&v199[8] + 24))
  {
    goto LABEL_5;
  }

  v9 = *(*&v212[8] + 40);
  if (!v9)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v234 = 136315394;
      *&v234[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v234[12] = 1024;
      *&v234[14] = 190;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v234, 0x12u);
    }

    v28 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v234 = 136315394;
      *&v234[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v234[12] = 1024;
      *&v234[14] = 190;
      _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v234, 0x12u);
    }

LABEL_5:
    v9 = 0;
  }

  *(*&v212[8] + 40) = 0;
  v10 = *(*&v199[8] + 24);
  _Block_object_dispose(v212, 8);
  _Block_object_dispose(v199, 8);
  if (v10 != 1)
  {
LABEL_114:
    v29 = v9;
    goto LABEL_115;
  }

  *store = 1;
  if (v7)
  {
    goto LABEL_9;
  }

  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v198 = 1;
  *v199 = 0;
  *&v199[8] = v199;
  *&v199[16] = 0x3052000000;
  *&v199[24] = __Block_byref_object_copy__27;
  *&v199[32] = __Block_byref_object_dispose__27;
  v200 = 0;
  v12 = *(v5 + 8);
  if (v12)
  {
    v13 = v12[10];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 containerWithIdentifier:objc_msgSend(v12 options:{"containerIdentifier"), objc_msgSend(*(v5 + 8), "containerOptions")}];
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  *v234 = 0;
  *&v234[8] = v234;
  *&v234[16] = 0x3052000000;
  v235 = __Block_byref_object_copy__27;
  v236 = __Block_byref_object_dispose__27;
  v237 = 0;
  v15 = *(v5 + 56);
  *v212 = MEMORY[0x1E69E9820];
  *&v212[8] = 3221225472;
  *&v212[16] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke;
  *&v212[24] = &unk_1E6EC3A58;
  *&v212[32] = v15;
  v213 = v199;
  v214 = v234;
  v215 = &v195;
  [(PFCloudKitStoreMonitor *)v15 performBlock:v212];
  if (*(v196 + 24) == 1)
  {
    if (v14)
    {
      v16 = *(v5 + 48);
      useDeviceToDeviceEncryption = [*(v5 + 8) useDeviceToDeviceEncryption];
      v18 = *(v5 + 56);
      if (v18)
      {
        v18 = v18[6];
      }

      v19 = v18;
      [*(v5 + 80) setContainer:v14];
      v20 = *(v5 + 80);
      *v221 = MEMORY[0x1E69E9820];
      *&v221[8] = 3221225472;
      *&v221[16] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_23;
      *&v221[24] = &unk_1E6EC3AA8;
      LOBYTE(v227) = useDeviceToDeviceEncryption;
      v225 = v234;
      v226 = v199;
      *&v221[32] = v19;
      v222 = v5;
      v223 = v16;
      v224 = &v195;
      [v20 establishCurrentAccountInfoWithCompletionHandler:v221];
      v21 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v23 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v24 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v24 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(Stream, v24))
      {
        requestIdentifier = [*(v5 + 72) requestIdentifier];
        *&buf[4] = "[PFCloudKitSetupAssistant _checkAccountStatus:]";
        *&buf[12] = 1024;
        v26 = @"<null>";
        *buf = 136315906;
        if (requestIdentifier)
        {
          v26 = requestIdentifier;
        }

        *&buf[14] = 439;
        *&buf[18] = 2112;
        *&buf[20] = v19;
        *&buf[28] = 2112;
        *&buf[30] = v26;
        _os_log_impl(&dword_18565F000, v23, v24, "CoreData+CloudKit: %s(%d): Waiting on accountInfoWithCompletionHandler for store %@ and setup request %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v21);
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      [*(v5 + 80) setContainer:0];
      *(v196 + 24) = 0;
      v33 = MEMORY[0x1E696ABC0];
      *v232 = *MEMORY[0x1E696A588];
      *v221 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a container back for the identifier: %@", objc_msgSend(*(v5 + 8), "containerIdentifier")];
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:v232 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v34];
      *(*&v199[8] + 40) = v35;
    }
  }

  *(v5 + 16) = v14;
  if (*(v196 + 24) == 1)
  {
    databaseScope = [*(v5 + 8) databaseScope];
    switch(databaseScope)
    {
      case 3:
        sharedCloudDatabase = [*(v5 + 16) sharedCloudDatabase];
        break;
      case 2:
        sharedCloudDatabase = [*(v5 + 16) privateCloudDatabase];
        break;
      case 1:
        sharedCloudDatabase = [*(v5 + 16) publicCloudDatabase];
        break;
      default:
        *(v196 + 24) = 0;
        v38 = MEMORY[0x1E696ABC0];
        *v205 = *MEMORY[0x1E696A588];
        v228 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit integration does not support the '%@' database scope.", (softLinkCKDatabaseScopeString[0])(objc_msgSend(*(v5 + 8), "databaseScope"))];
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:v205 count:1];
        v40 = [v38 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v39];
        *(*&v199[8] + 40) = v40;
        goto LABEL_47;
    }

    *(v5 + 24) = sharedCloudDatabase;
LABEL_47:
    if (*(v196 + 24) == 1 && !*(v5 + 24))
    {
      *(v196 + 24) = 0;
      v41 = MEMORY[0x1E696ABC0];
      zoneID = *MEMORY[0x1E696A588];
      *v209 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a database back for scope '%@' from container: %@", (softLinkCKDatabaseScopeString[0])(objc_msgSend(*(v5 + 8), "databaseScope")), *(v5 + 16)];
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v209 forKeys:&zoneID count:1];
      v43 = [v41 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v42];
      *(*&v199[8] + 40) = v43;
    }
  }

  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v199[8] + 40) withError:?];
  if (v196[3])
  {
LABEL_51:
    v29 = v9;
    goto LABEL_53;
  }

  v29 = *(*&v199[8] + 40);
  if (!v29)
  {
    v65 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 486;
      _os_log_error_impl(&dword_18565F000, v65, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v66 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 486;
      _os_log_fault_impl(&dword_18565F000, v66, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    goto LABEL_51;
  }

LABEL_53:

  *(*&v234[8] + 40) = 0;
  *(*&v199[8] + 40) = 0;
  v44 = *(v196 + 24);
  _Block_object_dispose(v234, 8);
  _Block_object_dispose(v199, 8);
  _Block_object_dispose(&v195, 8);
  if (v44 != 1)
  {
    goto LABEL_115;
  }

  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v198 = 0;
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  *v199 = 0;
  *&v199[8] = v199;
  *&v199[16] = 0x3052000000;
  *&v199[24] = __Block_byref_object_copy__27;
  *&v199[32] = __Block_byref_object_dispose__27;
  v200 = 0;
  *v234 = 0;
  *&v234[8] = v234;
  *&v234[16] = 0x3052000000;
  v235 = __Block_byref_object_copy__27;
  v236 = __Block_byref_object_dispose__27;
  v237 = 0;
  v45 = *(v5 + 56);
  if (v45)
  {
    v45 = v45[6];
  }

  v46 = *(v5 + 48);
  v47 = v45;
  v48 = *(v5 + 80);
  *v221 = MEMORY[0x1E69E9820];
  *&v221[8] = 3221225472;
  *&v221[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke;
  *&v221[24] = &unk_1E6EC3D00;
  v223 = &v195;
  v224 = v199;
  v225 = v234;
  *&v221[32] = v47;
  v222 = v46;
  [v48 establishCurrentUserRecordIDWithCompletionHandler:v221];
  v49 = objc_autoreleasePoolPush();
  v50 = __PFCloudKitLoggingGetStream();
  v51 = v50;
  if (__ckLoggingOverride == 17)
  {
    v52 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v52 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v50, v52))
  {
    requestIdentifier2 = [*(v5 + 72) requestIdentifier];
    *&v212[4] = "[PFCloudKitSetupAssistant _checkUserIdentity:]";
    *&v212[12] = 1024;
    v54 = @"<null>";
    *v212 = 136315906;
    if (requestIdentifier2)
    {
      v54 = requestIdentifier2;
    }

    *&v212[14] = 1475;
    *&v212[18] = 2112;
    *&v212[20] = v47;
    *&v212[28] = 2112;
    *&v212[30] = v54;
    _os_log_impl(&dword_18565F000, v51, v52, "CoreData+CloudKit: %s(%d): Waiting on fetchUserRecordIDWithCompletionHandler for store %@ and setup request %@", v212, 0x26u);
  }

  objc_autoreleasePoolPop(v49);
  dispatch_semaphore_wait(v46, 0xFFFFFFFFFFFFFFFFLL);
  v55 = *(v5 + 56);
  v56 = v55;
  if (*(v196 + 24) == 1)
  {
    *v212 = MEMORY[0x1E69E9820];
    *&v212[8] = 3221225472;
    *&v212[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_102;
    *&v212[24] = &unk_1E6EC3D78;
    *&v212[32] = v55;
    v213 = v5;
    v214 = v199;
    v215 = &v195;
    v216 = v234;
    [(PFCloudKitStoreMonitor *)v55 performBlock:v212];
    v57 = *(*&v234[8] + 40);
    if (!v57)
    {
      v9 = 0;
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  domain = [*(*&v234[8] + 40) domain];
  if (![domain isEqualToString:getCloudKitCKErrorDomain()] || objc_msgSend(*(*&v234[8] + 40), "code") != 9)
  {
    v59 = objc_autoreleasePoolPush();
    v60 = __PFCloudKitLoggingGetStream();
    v61 = v60;
    if (__ckLoggingOverride == 17)
    {
      v62 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v62 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v60, v62))
    {
      v63 = *(*&v234[8] + 40);
      *v212 = 136315906;
      *&v212[4] = "[PFCloudKitSetupAssistant _checkUserIdentity:]";
      *&v212[12] = 1024;
      *&v212[14] = 1635;
      *&v212[18] = 2112;
      *&v212[20] = v5;
      *&v212[28] = 2112;
      *&v212[30] = v63;
      _os_log_impl(&dword_18565F000, v61, v62, "CoreData+CloudKit: %s(%d): %@: Identity fetch failed with unknown error: %@", v212, 0x26u);
    }

    objc_autoreleasePoolPop(v59);
    v57 = *(*&v234[8] + 40);
    if (!v57)
    {
      v67 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v212 = 0;
        _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: fault: Identity fetch failed but did not set an error.\n", v212, 2u);
      }

      v68 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        *v212 = 0;
        _os_log_fault_impl(&dword_18565F000, v68, OS_LOG_TYPE_FAULT, "CoreData: Identity fetch failed but did not set an error.", v212, 2u);
      }

      v69 = MEMORY[0x1E696ABC0];
      v70 = *(*&v234[8] + 40);
      if (v70)
      {
        *v232 = *MEMORY[0x1E696AA08];
        *v212 = v70;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:v232 count:1];
      }

      else
      {
        v71 = 0;
      }

      v64 = [v69 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v71];
      goto LABEL_89;
    }

LABEL_76:
    v64 = v57;
LABEL_89:
    v9 = v64;
    goto LABEL_90;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__27;
  *&buf[32] = __Block_byref_object_dispose__27;
  v208 = 0;
  *v212 = MEMORY[0x1E69E9820];
  *&v212[8] = 3221225472;
  *&v212[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_107;
  *&v212[24] = &unk_1E6EC3D78;
  v214 = &v195;
  v215 = buf;
  *&v212[32] = v56;
  v213 = v5;
  v216 = v234;
  [(PFCloudKitStoreMonitor *)v56 performBlock:v212];
  if (v196[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*&buf[8] + 40);
  }

  *(*&buf[8] + 40) = 0;
  _Block_object_dispose(buf, 8);
LABEL_90:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:v9 withError:?];
  if (v196[3])
  {
LABEL_91:
    v9 = v29;
    goto LABEL_93;
  }

  if (!v9)
  {
    v110 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 1651;
      _os_log_error_impl(&dword_18565F000, v110, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v111 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 1651;
      _os_log_fault_impl(&dword_18565F000, v111, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    goto LABEL_91;
  }

LABEL_93:

  *(*&v199[8] + 40) = 0;
  *(*&v234[8] + 40) = 0;

  v72 = *(v196 + 24);
  _Block_object_dispose(v234, 8);
  _Block_object_dispose(v199, 8);
  _Block_object_dispose(&v195, 8);
  if (v72 != 1)
  {
    goto LABEL_114;
  }

  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  v231 = 1;
  v219 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__27;
  *&buf[32] = __Block_byref_object_dispose__27;
  v208 = 0;
  v193 = *(v5 + 56);
  *v205 = 0;
  *&v205[8] = v205;
  *&v205[16] = 0x2020000000;
  v206 = 0;
  databaseScope2 = [*(v5 + 8) databaseScope];
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v198 = 1;
  *v234 = 0;
  *&v234[8] = v234;
  *&v234[16] = 0x3052000000;
  v235 = __Block_byref_object_copy__27;
  v236 = __Block_byref_object_dispose__27;
  v237 = 0;
  databaseScope3 = [*(v5 + 8) databaseScope];
  if (databaseScope3 == 3)
  {
    v94 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v95 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v96 = *(v5 + 56);
    *v212 = MEMORY[0x1E69E9820];
    *&v212[8] = 3221225472;
    *&v212[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_70;
    *&v212[24] = &unk_1E6EC3AF8;
    v216 = 3;
    v214 = v234;
    v215 = &v195;
    *&v212[32] = v96;
    v213 = v95;
    [(PFCloudKitStoreMonitor *)v96 performBlock:v212];

    if (!*(*&v234[8] + 40) && [v95 count])
    {
      v97 = dispatch_semaphore_create(0);
      v98 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:0 recordIDsToDelete:{objc_msgSend(v95, "allObjects")}];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v98);
      [v98 setMarkAsParticipantNeedsNewInvitationToken:1];
      *v199 = MEMORY[0x1E69E9820];
      *&v199[8] = 3221225472;
      *&v199[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3_75;
      *&v199[24] = &unk_1E6EC3B70;
      v201 = v234;
      *&v199[32] = v97;
      v200 = &v195;
      [v98 setModifyRecordsCompletionBlock:v199];
      [*(v5 + 24) addOperation:v98];

      v99 = objc_autoreleasePoolPush();
      v100 = __PFCloudKitLoggingGetStream();
      v101 = v100;
      if (__ckLoggingOverride == 17)
      {
        v102 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v102 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v100, v102))
      {
        dsema = v97;
        v103 = *(v5 + 56);
        if (v103)
        {
          v104 = *(v103 + 48);
        }

        else
        {
          v104 = 0;
        }

        requestIdentifier3 = [*(v5 + 72) requestIdentifier];
        *&v221[4] = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]";
        *&v221[12] = 1024;
        v106 = @"<null>";
        *v221 = 136315906;
        if (requestIdentifier3)
        {
          v106 = requestIdentifier3;
        }

        *&v221[14] = 711;
        *&v221[18] = 2112;
        *&v221[20] = v104;
        *&v221[28] = 2112;
        *&v221[30] = v106;
        _os_log_impl(&dword_18565F000, v101, v102, "CoreData+CloudKit: %s(%d): Waiting on mantee recovery shares to delete for store %@ and setup request %@", v221, 0x26u);
        v97 = dsema;
      }

      objc_autoreleasePoolPop(v99);
      dispatch_semaphore_wait(v97, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v97);
    }

    if (!*(*&v234[8] + 40) && [v94 count])
    {
      v107 = *(v5 + 56);
      *v221 = MEMORY[0x1E69E9820];
      *&v221[8] = 3221225472;
      *&v221[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_76;
      *&v221[24] = &unk_1E6EC3AD0;
      *&v221[32] = v107;
      v222 = v94;
      v225 = &v195;
      v226 = 3;
      v223 = v5;
      v224 = v234;
      [(PFCloudKitStoreMonitor *)v107 performBlock:v221];
    }

    v108 = *(*&v234[8] + 40);
    if (v108)
    {
      v109 = v108;
      if (v109)
      {
        v219 = v109;
      }

      else
      {
        v114 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          *v232 = 136315394;
          *&v232[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v232[12] = 1024;
          *&v232[14] = 781;
          _os_log_error_impl(&dword_18565F000, v114, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v232, 0x12u);
        }

        v115 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
        {
          *v232 = 136315394;
          *&v232[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v232[12] = 1024;
          *&v232[14] = 781;
          _os_log_fault_impl(&dword_18565F000, v115, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v232, 0x12u);
        }
      }

      goto LABEL_157;
    }
  }

  else if (databaseScope3 == 2)
  {
    v75 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v76 = *(v5 + 56);
    *v212 = MEMORY[0x1E69E9820];
    *&v212[8] = 3221225472;
    *&v212[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke;
    *&v212[24] = &unk_1E6EC3AF8;
    v216 = 2;
    v214 = v234;
    v215 = &v195;
    *&v212[32] = v76;
    v213 = v75;
    [(PFCloudKitStoreMonitor *)v76 performBlock:v212];

    if (!*(*&v234[8] + 40) && [v75 count])
    {
      allObjects = [v75 allObjects];
      v78 = dispatch_semaphore_create(0);
      v79 = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:0 recordZoneIDsToDelete:allObjects];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v79);
      *v199 = MEMORY[0x1E69E9820];
      *&v199[8] = 3221225472;
      *&v199[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3;
      *&v199[24] = &unk_1E6EC3B20;
      v201 = &v195;
      v202 = v234;
      *&v199[32] = allObjects;
      v200 = v78;
      [v79 setModifyRecordZonesCompletionBlock:v199];
      [*(v5 + 24) addOperation:v79];

      v80 = objc_autoreleasePoolPush();
      v81 = __PFCloudKitLoggingGetStream();
      v82 = v81;
      if (__ckLoggingOverride == 17)
      {
        v83 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v83 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v81, v83))
      {
        v84 = *(v5 + 56);
        if (v84)
        {
          v85 = *(v84 + 48);
        }

        else
        {
          v85 = 0;
        }

        requestIdentifier4 = [*(v5 + 72) requestIdentifier];
        *&v221[4] = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]";
        *&v221[12] = 1024;
        v87 = @"<null>";
        *v221 = 136315906;
        if (requestIdentifier4)
        {
          v87 = requestIdentifier4;
        }

        *&v221[14] = 570;
        *&v221[18] = 2112;
        *&v221[20] = v85;
        *&v221[28] = 2112;
        *&v221[30] = v87;
        _os_log_impl(&dword_18565F000, v82, v83, "CoreData+CloudKit: %s(%d): Waiting on mantee recovery zones to delete for store %@ and setup request %@", v221, 0x26u);
      }

      objc_autoreleasePoolPop(v80);
      dispatch_semaphore_wait(v78, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v78);
    }

    if (!*(*&v234[8] + 40) && [v75 count])
    {
      v88 = *(v5 + 56);
      *v221 = MEMORY[0x1E69E9820];
      *&v221[8] = 3221225472;
      *&v221[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_65;
      *&v221[24] = &unk_1E6EC3AD0;
      *&v221[32] = v88;
      v222 = v75;
      v225 = &v195;
      v226 = 2;
      v223 = v5;
      v224 = v234;
      [(PFCloudKitStoreMonitor *)v88 performBlock:v221];
    }

    v89 = *(*&v234[8] + 40);
    if (v89)
    {
      v90 = v89;
      if (v90)
      {
        v219 = v90;
      }

      else
      {
        v112 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          *v232 = 136315394;
          *&v232[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v232[12] = 1024;
          *&v232[14] = 639;
          _os_log_error_impl(&dword_18565F000, v112, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v232, 0x12u);
        }

        v113 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
        {
          *v232 = 136315394;
          *&v232[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v232[12] = 1024;
          *&v232[14] = 639;
          _os_log_fault_impl(&dword_18565F000, v113, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v232, 0x12u);
        }
      }

LABEL_157:

      *(*&v234[8] + 40) = 0;
    }
  }

  v116 = *(v196 + 24);
  _Block_object_dispose(v234, 8);
  _Block_object_dispose(&v195, 8);
  v117 = v229;
  *(v229 + 24) = v116;
  if (v116 == 1)
  {
    if ((databaseScope2 - 1) > 1)
    {
      *(*&v205[8] + 24) = 1;
    }

    else
    {
      *v199 = MEMORY[0x1E69E9820];
      *&v199[8] = 3221225472;
      *&v199[16] = __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke;
      *&v199[24] = &unk_1E6EC3BC0;
      *&v199[32] = v193;
      v200 = v5;
      v201 = v205;
      v202 = &v228;
      v203 = buf;
      v204 = databaseScope2;
      [(PFCloudKitStoreMonitor *)v193 performBlock:v199];
      v117 = v229;
    }
  }

  if (*(v117 + 24) == 1 && (*(*&v205[8] + 24) & 1) == 0)
  {
    *(v117 + 24) = 0;
    if (databaseScope2 == 3)
    {
      *(v117 + 24) = 1;
      goto LABEL_164;
    }

    if (databaseScope2 != 2)
    {
      v131 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:databaseScope2];
      v132 = [objc_alloc(getCloudKitCKRecordZoneClass[0]()) initWithZoneID:v131];
      v195 = 0;
      v196 = &v195;
      v197 = 0x2020000000;
      v198 = 0;
      *v234 = 0;
      *&v234[8] = v234;
      *&v234[16] = 0x3052000000;
      v235 = __Block_byref_object_copy__27;
      v236 = __Block_byref_object_dispose__27;
      v237 = 0;
      databaseScope4 = [*(v5 + 8) databaseScope];
      dsemaa = *(v5 + 48);
      v134 = objc_alloc(getCloudKitCKFetchRecordZonesOperationClass());
      zoneID = [v132 zoneID];
      v135 = [v134 initWithRecordZoneIDs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &zoneID, 1)}];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v135);
      *v232 = 0;
      *&v232[8] = v232;
      *&v232[16] = 0x2020000000;
      v233 = 0;
      *v221 = MEMORY[0x1E69E9820];
      *&v221[8] = 3221225472;
      *&v221[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke;
      *&v221[24] = &unk_1E6EC3C10;
      v223 = v234;
      v224 = &v195;
      v225 = v232;
      v226 = databaseScope4;
      *&v221[32] = v132;
      v222 = dsemaa;
      [v135 setFetchRecordZonesCompletionBlock:v221];
      [*(v5 + 24) addOperation:v135];
      v136 = objc_autoreleasePoolPush();
      v137 = __PFCloudKitLoggingGetStream();
      v138 = v137;
      if (__ckLoggingOverride == 17)
      {
        v139 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v139 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v137, v139))
      {
        v190 = databaseScope4;
        v140 = v135;
        v141 = v132;
        v142 = v131;
        v143 = *(v5 + 56);
        if (v143)
        {
          v144 = *(v143 + 48);
        }

        else
        {
          v144 = 0;
        }

        requestIdentifier5 = [*(v5 + 72) requestIdentifier];
        *&v212[4] = "[PFCloudKitSetupAssistant _checkIfZoneExists:error:]";
        *&v212[12] = 1024;
        v146 = @"<null>";
        *v212 = 136315906;
        if (requestIdentifier5)
        {
          v146 = requestIdentifier5;
        }

        *&v212[14] = 1096;
        *&v212[18] = 2112;
        *&v212[20] = v144;
        *&v212[28] = 2112;
        *&v212[30] = v146;
        _os_log_impl(&dword_18565F000, v138, v139, "CoreData+CloudKit: %s(%d): Waiting on zone fetch record for store %@ and setup request %@", v212, 0x26u);
        v131 = v142;
        v132 = v141;
        v135 = v140;
        databaseScope4 = v190;
      }

      objc_autoreleasePoolPop(v136);
      dispatch_semaphore_wait(dsemaa, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v196 + 24) == 1)
      {
        v147 = *(v5 + 56);
        *v212 = MEMORY[0x1E69E9820];
        *&v212[8] = 3221225472;
        *&v212[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_86;
        *&v212[24] = &unk_1E6EC3BC0;
        *&v212[32] = v147;
        v213 = v132;
        v214 = v232;
        v215 = &v195;
        v216 = v234;
        v217 = databaseScope4;
        [(PFCloudKitStoreMonitor *)v147 performBlock:v212];
      }

      else if (databaseScope4 == 1 && [*(*&v234[8] + 40) code] == 9)
      {
        domain2 = [*(*&v234[8] + 40) domain];
        if ([domain2 isEqualToString:getCloudKitCKErrorDomain()])
        {
          v158 = [objc_msgSend(v132 "zoneID")];
          if (([v158 isEqualToString:getCloudKitCKRecordZoneDefaultName[0]()] & 1) == 0)
          {
            v159 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              *v212 = 0;
              _os_log_error_impl(&dword_18565F000, v159, OS_LOG_TYPE_ERROR, "CoreData: fault: Custom zones aren't supported yet with the public database.\n", v212, 2u);
            }

            v160 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
            {
              *v212 = 0;
              _os_log_fault_impl(&dword_18565F000, v160, OS_LOG_TYPE_FAULT, "CoreData: Custom zones aren't supported yet with the public database.", v212, 2u);
            }
          }

          *(v196 + 24) = 1;

          *(*&v234[8] + 40) = 0;
          v161 = *(v5 + 56);
          *v212 = MEMORY[0x1E69E9820];
          *&v212[8] = 3221225472;
          *&v212[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_87;
          *&v212[24] = &unk_1E6EC3C38;
          *&v212[32] = v161;
          v213 = v132;
          v216 = 1;
          v214 = &v195;
          v215 = v234;
          [(PFCloudKitStoreMonitor *)v161 performBlock:v212];
        }
      }

      if ((v196[3] & 1) == 0)
      {
        v162 = *(*&v234[8] + 40);
        if (v162)
        {
          v219 = v162;
        }

        else
        {
          v180 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            *v209 = 136315394;
            *&v209[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v210 = 1024;
            v211 = 1187;
            _os_log_error_impl(&dword_18565F000, v180, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v209, 0x12u);
          }

          v181 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
          {
            *v209 = 136315394;
            *&v209[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v210 = 1024;
            v211 = 1187;
            _os_log_fault_impl(&dword_18565F000, v181, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v209, 0x12u);
          }
        }
      }

      *(*&v234[8] + 40) = 0;
      v182 = *(v196 + 24);
      _Block_object_dispose(v232, 8);
      _Block_object_dispose(v234, 8);
      _Block_object_dispose(&v195, 8);
      *(v229 + 24) = v182;

      goto LABEL_164;
    }

    v119 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    v120 = [objc_alloc(getCloudKitCKRecordZoneClass[0]()) initWithZoneID:v119];
    if ([(PFCloudKitSetupAssistant *)v5 _saveZone:v120 error:&v219])
    {
      *(v229 + 24) = 1;
LABEL_268:

      goto LABEL_164;
    }

    v148 = v219;
    domain3 = [(__CFString *)v219 domain];
    if ([domain3 isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([(__CFString *)v148 code]== 112)
      {
        goto LABEL_204;
      }

      if ([(__CFString *)v148 code]== 2)
      {
        userInfo = [(__CFString *)v148 userInfo];
        v184 = [objc_msgSend(userInfo objectForKey:{getCloudKitCKPartialErrorsByItemIDKey()), "objectForKey:", objc_msgSend(v120, "zoneID")}];
        domain4 = [v184 domain];
        if ([domain4 isEqualToString:getCloudKitCKErrorDomain()])
        {
          if ([v184 code] == 112)
          {
LABEL_204:
            *v212 = 0;
            if (([(PFCloudKitSetupAssistant *)v5 _deleteZone:v120 error:v212]& 1) == 0)
            {
              if (v229[3])
              {
                goto LABEL_206;
              }

              goto LABEL_261;
            }

LABEL_205:
            v150 = [(PFCloudKitSetupAssistant *)v5 _saveZone:v120 error:v212];
            *(v229 + 24) = v150;
            if (v150)
            {
LABEL_206:
              v151 = 0;
LABEL_267:
              v219 = v151;
              goto LABEL_268;
            }

LABEL_261:
            v186 = objc_autoreleasePoolPush();
            v187 = __PFCloudKitLoggingGetStream();
            v188 = v187;
            if (__ckLoggingOverride == 17)
            {
              v189 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v189 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v187, v189))
            {
              *v221 = 136316162;
              *&v221[4] = "[PFCloudKitSetupAssistant _createZoneIfNecessary:]";
              *&v221[12] = 1024;
              *&v221[14] = 879;
              *&v221[18] = 2112;
              *&v221[20] = v5;
              *&v221[28] = 2112;
              *&v221[30] = v219;
              *&v221[38] = 2112;
              v222 = *v212;
              _os_log_impl(&dword_18565F000, v188, v189, "CoreData+CloudKit: %s(%d): %@ unable to recover from error: %@\nEncountered subsequent error: %@", v221, 0x30u);
            }

            objc_autoreleasePoolPop(v186);
            v151 = *v212;
            goto LABEL_267;
          }

          if ([v184 code] == 14)
          {
            *v212 = 0;
            goto LABEL_205;
          }
        }
      }
    }

    *(v229 + 24) = 0;
    goto LABEL_268;
  }

LABEL_164:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&buf[8] + 40) withError:?];
  if (v229[3])
  {
LABEL_165:
    v29 = v9;
    goto LABEL_174;
  }

  v118 = *(*&buf[8] + 40);
  if (v118)
  {
    v29 = v118;
    v219 = v29;
  }

  else
  {
    v29 = v219;
  }

  if (!v29)
  {
    v127 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      *v221 = 136315394;
      *&v221[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v221[12] = 1024;
      *&v221[14] = 908;
      _os_log_error_impl(&dword_18565F000, v127, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v221, 0x12u);
    }

    v128 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
    {
      *v221 = 136315394;
      *&v221[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v221[12] = 1024;
      *&v221[14] = 908;
      _os_log_fault_impl(&dword_18565F000, v128, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v221, 0x12u);
    }

    goto LABEL_165;
  }

LABEL_174:

  *(*&buf[8] + 40) = 0;
  v121 = *(v229 + 24);
  _Block_object_dispose(v205, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v228, 8);
  if (v121 != 1)
  {
    goto LABEL_115;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 1;
  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v198 = 0;
  *v234 = 0;
  *&v234[8] = v234;
  *&v234[16] = 0x3052000000;
  v235 = __Block_byref_object_copy__27;
  v236 = __Block_byref_object_dispose__27;
  v237 = 0;
  *v232 = 0;
  *&v232[8] = v232;
  *&v232[16] = 0x2020000000;
  LOBYTE(v233) = 0;
  v228 = 0;
  v229 = &v228;
  v230 = 0x2020000000;
  v231 = 0;
  databaseScope5 = [*(v5 + 8) databaseScope];
  if (databaseScope5 == 1)
  {
    v123 = 1;
    goto LABEL_243;
  }

  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  v124 = *(v5 + 56);
  v125 = v124;
  if (databaseScope5 == 3)
  {
    *v221 = MEMORY[0x1E69E9820];
    *&v221[8] = 3221225472;
    *&v221[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_3;
    *&v221[24] = &unk_1E6EC3CB0;
    v225 = 3;
    *&v221[32] = v124;
    v222 = v232;
    v223 = buf;
    v224 = v234;
    [(PFCloudKitStoreMonitor *)v124 performBlock:v221];
  }

  else if (databaseScope5 == 2)
  {
    v126 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    *v221 = MEMORY[0x1E69E9820];
    *&v221[8] = 3221225472;
    *&v221[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke;
    *&v221[24] = &unk_1E6EC3C88;
    *&v221[32] = v125;
    v222 = v126;
    v227 = 2;
    v223 = &v228;
    v224 = v232;
    v225 = buf;
    v226 = v234;
    [(PFCloudKitStoreMonitor *)v125 performBlock:v221];
  }

  if (*(*&buf[8] + 24) == 1)
  {
    databaseScope6 = [*(v5 + 8) databaseScope];
    switch(databaseScope6)
    {
      case 1:
        v130 = PFPublicDatabaseSubscriptionID;
        break;
      case 2:
        v130 = PFPrivateDatabaseSubscriptionID;
        break;
      case 3:
        v130 = PFSharedDatabaseSubscriptionID;
        break;
      default:
        *(*&buf[8] + 24) = 0;
        v153 = objc_alloc(MEMORY[0x1E696ABC0]);
        zoneID = *MEMORY[0x1E696A588];
        *v209 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit integration does not support the '%@' database scope.", (softLinkCKDatabaseScopeString[0])(objc_msgSend(*(v5 + 8), "databaseScope"))];
        v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v209 forKeys:&zoneID count:1];
        v155 = [v153 initWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v154];
        v152 = 0;
        *(*&v234[8] + 40) = v155;
LABEL_211:
        if (*(*&buf[8] + 24) == 1)
        {
          *(v5 + 32) = [objc_alloc(getCloudKitCKDatabaseSubscriptionClass[0]()) initWithSubscriptionID:v152];
          v156 = objc_alloc_init(getCloudKitCKNotificationInfoClass[0]());
          [v156 setShouldSendContentAvailable:1];
          [*(v5 + 32) setNotificationInfo:v156];

          if (*(*&v232[8] + 24))
          {
            *(*&buf[8] + 24) = 1;
          }

          else
          {
            *(*&buf[8] + 24) = 0;
            v163 = *(v5 + 32);
            v164 = *(v5 + 48);
            if (*(v229 + 24) == 1)
            {
              v219 = @"com.apple.coredata.cloudkit.zone.subscription";
              v165 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v219 count:1];
            }

            else
            {
              v165 = 0;
            }

            v166 = objc_alloc(getCloudKitCKModifySubscriptionsOperationClass());
            v218 = v163;
            v167 = [v166 initWithSubscriptionsToSave:objc_msgSend(MEMORY[0x1E695DEC8] subscriptionIDsToDelete:{"arrayWithObjects:count:", &v218, 1), v165}];
            -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v167);
            *v212 = MEMORY[0x1E69E9820];
            *&v212[8] = 3221225472;
            *&v212[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_5;
            *&v212[24] = &unk_1E6EC3CD8;
            v214 = buf;
            v215 = v234;
            v216 = &v195;
            *&v212[32] = v163;
            v213 = v164;
            [v167 setModifySubscriptionsCompletionBlock:v212];
            [*(v5 + 24) addOperation:v167];
            v168 = objc_autoreleasePoolPush();
            v169 = __PFCloudKitLoggingGetStream();
            v170 = v169;
            if (__ckLoggingOverride == 17)
            {
              v171 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v171 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v169, v171))
            {
              v194 = v164;
              v172 = *(v5 + 56);
              if (v172)
              {
                v173 = *(v172 + 48);
              }

              else
              {
                v173 = 0;
              }

              requestIdentifier6 = [*(v5 + 72) requestIdentifier];
              *&v199[4] = "[PFCloudKitSetupAssistant _setupDatabaseSubscriptionIfNecessary:]";
              *&v199[12] = 1024;
              v175 = @"<null>";
              *v199 = 136315906;
              if (requestIdentifier6)
              {
                v175 = requestIdentifier6;
              }

              *&v199[14] = 1374;
              *&v199[18] = 2112;
              *&v199[20] = v173;
              *&v199[28] = 2112;
              *&v199[30] = v175;
              _os_log_impl(&dword_18565F000, v170, v171, "CoreData+CloudKit: %s(%d): Waiting on database subscription setup for store %@ and setup request %@", v199, 0x26u);
              v164 = v194;
            }

            objc_autoreleasePoolPop(v168);
            dispatch_semaphore_wait(v164, 0xFFFFFFFFFFFFFFFFLL);
            v176 = *(v5 + 56);
            *v199 = MEMORY[0x1E69E9820];
            *&v199[8] = 3221225472;
            *&v199[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_99;
            *&v199[24] = &unk_1E6EC3CB0;
            *&v199[32] = v176;
            v200 = buf;
            v201 = &v195;
            v202 = v234;
            v203 = databaseScope5;
            [(PFCloudKitStoreMonitor *)v176 performBlock:v199];
          }
        }

        goto LABEL_239;
    }

    v152 = *v130;
    goto LABEL_211;
  }

LABEL_239:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v234[8] + 40) withError:?];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v177 = *(*&v234[8] + 40);
    if (v177)
    {
      goto LABEL_242;
    }

    v178 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
    {
      *v205 = 136315394;
      *&v205[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v205[12] = 1024;
      *&v205[14] = 1446;
      _os_log_error_impl(&dword_18565F000, v178, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v205, 0x12u);
    }

    v179 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
    {
      *v205 = 136315394;
      *&v205[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v205[12] = 1024;
      *&v205[14] = 1446;
      _os_log_fault_impl(&dword_18565F000, v179, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v205, 0x12u);
    }
  }

  v177 = v29;
LABEL_242:

  *(*&v234[8] + 40) = 0;
  v123 = *(*&buf[8] + 24);
  v29 = v177;
LABEL_243:
  _Block_object_dispose(&v228, 8);
  _Block_object_dispose(v232, 8);
  _Block_object_dispose(v234, 8);
  _Block_object_dispose(&v195, 8);
  _Block_object_dispose(buf, 8);
  v9 = v29;
  if (v123)
  {
LABEL_9:
    *v234 = 0;
    *&v234[8] = v234;
    *&v234[16] = 0x2020000000;
    LOBYTE(v235) = 1;
    *v212 = 0;
    *&v212[8] = v212;
    *&v212[16] = 0x3052000000;
    *&v212[24] = __Block_byref_object_copy__27;
    *&v212[32] = __Block_byref_object_dispose__27;
    v213 = 0;
    v11 = *(v5 + 56);
    *v199 = 0;
    *&v199[8] = v199;
    *&v199[16] = 0x3052000000;
    *&v199[24] = __Block_byref_object_copy__27;
    *&v199[32] = __Block_byref_object_dispose__27;
    v200 = 0;
    [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
    *v221 = MEMORY[0x1E69E9820];
    *&v221[8] = 3221225472;
    *&v221[16] = __60__PFCloudKitSetupAssistant__initializeAssetStorageURLError___block_invoke;
    *&v221[24] = &unk_1E6EC3A58;
    *&v221[32] = v11;
    v222 = v199;
    v223 = v234;
    v224 = v212;
    [(PFCloudKitStoreMonitor *)v11 performBlock:v221];
    [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v212[8] + 40) withError:?];
    if (*(*&v234[8] + 24) == 1)
    {
      *(v5 + 40) = *(*&v199[8] + 40);
    }

    else
    {
      v29 = *(*&v212[8] + 40);
      if (v29)
      {
        goto LABEL_35;
      }

      v30 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        *&buf[12] = 1024;
        *&buf[14] = 278;
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        *&buf[12] = 1024;
        *&buf[14] = 278;
        _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v29 = v9;
LABEL_35:

    *(*&v199[8] + 40) = 0;
    *(*&v212[8] + 40) = 0;
    v32 = *(*&v234[8] + 24);
    _Block_object_dispose(v199, 8);
    _Block_object_dispose(v212, 8);
    _Block_object_dispose(v234, 8);
    if (v32)
    {
      result = 1;
      goto LABEL_123;
    }
  }

LABEL_115:
  if (v29)
  {
    if (a2)
    {
      result = 0;
      *a2 = v29;
      goto LABEL_123;
    }

LABEL_122:
    result = 0;
    goto LABEL_123;
  }

  v91 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    *v221 = 136315394;
    *&v221[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
    *&v221[12] = 1024;
    *&v221[14] = 107;
    _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v221, 0x12u);
  }

  v92 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v92, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v221 = 136315394;
    *&v221[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
    *&v221[12] = 1024;
    *&v221[14] = 107;
    _os_log_fault_impl(&dword_18565F000, v92, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v221, 0x12u);
    goto LABEL_122;
  }

LABEL_123:
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)beginActivityForPhase:(uint64_t)phase
{
  v3 = *(phase + 72);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 beginActivityForPhase:a2];
  [objc_msgSend(*(phase + 8) "progressProvider")];
}

- (void)endActivityForPhase:(uint64_t)phase withError:
{
  v4 = *(self + 72);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 endActivityForPhase:a2 withError:phase];
  [objc_msgSend(*(self + 8) "progressProvider")];
}

void __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke(uint64_t *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (!v2)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E696A588];
    v38 = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *(*(a1[7] + 8) + 40) = [v10 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v11];
    goto LABEL_30;
  }

  v3 = a1[4];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 32));
    v5 = a1[4];
  }

  else
  {
    v5 = 0;
    WeakRetained = 0;
  }

  v6 = [(PFCloudKitStoreMonitor *)v5 newBackgroundContextForMonitoredCoordinator];
  [(NSManagedObjectContext *)v6 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke_2;
  v26[3] = &unk_1E6EC19D8;
  v26[4] = v2;
  v26[5] = v6;
  v26[6] = a1[5];
  [(NSManagedObjectContext *)v6 performBlockAndWait:v26];
  *(*(a1[6] + 8) + 24) = [PFCloudKitMetadataModel checkAndRepairSchemaOfStore:v2 withManagedObjectContext:v6 error:(*(a1[7] + 8) + 40)];
  v7 = *(a1[6] + 8);
  if (*(v7 + 24) == 1)
  {
    if (a1[5])
    {
      v8 = *(a1[7] + 8);
      v31 = 0;
      v32 = &v31;
      v33 = 0x3052000000;
      v34 = __Block_byref_object_copy__27;
      v35 = __Block_byref_object_dispose__27;
      v36 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __96__PFCloudKitSetupAssistant__checkAndTruncateEventHistoryIfNeededWithManagedObjectContext_error___block_invoke;
      *&buf[24] = &unk_1E6EC1EB8;
      v44 = v6;
      v45 = &v31;
      v46 = &v27;
      [(NSManagedObjectContext *)v6 performBlockAndWait:buf];
      if ((v28[3] & 1) == 0)
      {
        v9 = v32[5];
        if (v9)
        {
          *(v8 + 40) = v9;
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *v39 = 136315394;
            v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v41 = 1024;
            v42 = 1705;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v39, 0x12u);
          }

          v14 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *v39 = 136315394;
            v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v41 = 1024;
            v42 = 1705;
            _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v39, 0x12u);
          }
        }
      }

      v32[5] = 0;
      v15 = *(v28 + 24);
      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v31, 8);
      if (v15)
      {
        v16 = [NSCKEvent beginEventForRequest:a1[4] withMonitor:(*(a1[7] + 8) + 40) error:?];
        v17 = v16;
        if (v16)
        {
          *(a1[5] + 64) = v16;
          [objc_msgSend(*(a1[5] + 8) "progressProvider")];
        }

        else
        {
          *(*(a1[6] + 8) + 24) = 0;
          v19 = *(*(a1[7] + 8) + 40);
        }

        goto LABEL_22;
      }

      v7 = *(a1[6] + 8);
    }

    *(v7 + 24) = 0;
    v18 = *(*(a1[7] + 8) + 40);
  }

  else
  {
    v12 = *(*(a1[7] + 8) + 40);
  }

LABEL_22:
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v22 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v23 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v23 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v23))
    {
      v24 = *(*(a1[7] + 8) + 40);
      *buf = 136315650;
      *&buf[4] = "[PFCloudKitSetupAssistant _checkAndInitializeMetadata:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 174;
      *&buf[18] = 2112;
      *&buf[20] = v24;
      _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Failed to initialize CloudKit metadata: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v20);
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
}

void __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v8 = 0;
    if (([*(a1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v8}] & 1) == 0)
    {
      v2 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v4 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v5 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v5 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v5))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v10 = "[PFCloudKitSetupAssistant _checkAndInitializeMetadata:]_block_invoke_2";
        v11 = 1024;
        v12 = 143;
        v13 = 2112;
        v14 = v6;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__PFCloudKitSetupAssistant__initializeAssetStorageURLError___block_invoke(uint64_t *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v35 = 0;
    v3 = a1[4];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    p_info = &OBJC_METACLASS___NSBatchInsertRequest.info;
    *(*(a1[5] + 8) + 40) = [PFCloudKitSerializer assetStorageDirectoryURLForStore:v2];
    if (!*(*(a1[5] + 8) + 40))
    {
      *(*(a1[6] + 8) + 24) = 0;
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E696A250];
      v38 = *MEMORY[0x1E696A588];
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create largeBlobDirectoryURL with observed store: %@", v2];
      *(*(a1[7] + 8) + 40) = [v22 initWithDomain:v23 code:134403 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}];
LABEL_34:

      goto LABEL_35;
    }

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = 0;
    if ([v6 fileExistsAtPath:objc_msgSend(*(*(a1[5] + 8) + 40) isDirectory:{"path"), &v34}])
    {
      v7 = *(*(a1[5] + 8) + 40);
      if (v34 == 1)
      {
        v27 = WeakRetained;
        v28 = v2;
        v8 = [v6 subpathsAtPath:{objc_msgSend(v7, "path")}];
        v33 = 0;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v52 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(a1[5] + 8) + 40) URLByAppendingPathComponent:*(*(&v29 + 1) + 8 * i)];
              if (([v6 removeItemAtURL:v13 error:&v33] & 1) == 0 && unlink(objc_msgSend(objc_msgSend(v13, "path"), "fileSystemRepresentation")))
              {
                v14 = objc_autoreleasePoolPush();
                Stream = __PFCloudKitLoggingGetStream();
                v16 = Stream;
                if (__ckLoggingOverride == 17)
                {
                  v17 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v17 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(Stream, v17))
                {
                  v18 = *__error();
                  *buf = 136316162;
                  v43 = "[PFCloudKitSetupAssistant _initializeAssetStorageURLError:]_block_invoke";
                  v44 = 1024;
                  v45 = 225;
                  v46 = 1024;
                  v47 = v18;
                  v48 = 2112;
                  v49 = v13;
                  v50 = 2112;
                  v51 = v33;
                  _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): Failed to asset file (and unlink:%d) at url: %@\n%@", buf, 0x2Cu);
                }

                objc_autoreleasePoolPop(v14);
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v52 count:16];
          }

          while (v10);
        }

        v19 = a1 + 6;
        WeakRetained = v27;
        v2 = v28;
        p_info = (&OBJC_METACLASS___NSBatchInsertRequest + 32);
        if ((*(*(a1[6] + 8) + 24) & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      *(*(a1[6] + 8) + 24) = [v6 removeItemAtURL:v7 error:&v35];
    }

    v19 = a1 + 6;
    if (*(*(a1[6] + 8) + 24) != 1 || (*(*(a1[6] + 8) + 24) = [v6 createDirectoryAtURL:*(*(a1[5] + 8) + 40) withIntermediateDirectories:1 attributes:0 error:&v35], *(*(a1[6] + 8) + 24) != 1) || (v24 = *(*(a1[5] + 8) + 40), v40 = *MEMORY[0x1E695DB80], v41 = MEMORY[0x1E695E118], *(*(a1[6] + 8) + 24) = objc_msgSend(v24, "setResourceValues:error:", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v41, &v40, 1), &v35), (*(*(a1[6] + 8) + 24) & 1) == 0))
    {
LABEL_32:
      *(*(a1[7] + 8) + 40) = v35;
LABEL_33:

      goto LABEL_34;
    }

LABEL_30:
    v25 = [(PFCloudKitSerializer *)(p_info + 461) oldAssetStorageDirectoryURLForStore:v2];
    if ([v6 fileExistsAtPath:{objc_msgSend(v25, "path")}])
    {
      *(*(*v19 + 8) + 24) = [v6 removeItemAtURL:v25 error:&v35];
    }

    goto LABEL_33;
  }

  *(*(a1[6] + 8) + 24) = 0;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E696A250];
  v36 = *MEMORY[0x1E696A580];
  v37 = @"Failed to initialize the asset storage url because the store was removed from the coordinator.";
  *(*(a1[7] + 8) + 40) = [v20 initWithDomain:v21 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v37, &v36, 1)}];
LABEL_35:

  v26 = *MEMORY[0x1E69E9840];
}

void __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_2;
    v7[3] = &unk_1E6EC3A80;
    v7[4] = v2;
    v7[5] = v3;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = *MEMORY[0x1E696A250];
    v10 = *MEMORY[0x1E696A588];
    v11[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 40) + 8) + 40) = [v4 initWithDomain:v5 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 48) + 8) + 40 error:?];
  if (result)
  {
    result = [result stringValue];
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = *(*(*(a1 + 48) + 8) + 40);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v9 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v9 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    *buf = 136316162;
    v46 = "[PFCloudKitSetupAssistant _checkAccountStatus:]_block_invoke";
    v47 = 1024;
    v48 = 346;
    v49 = 2112;
    v50 = v10;
    v51 = 2112;
    v52 = a2;
    v53 = 2112;
    v54 = a3;
    _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Fetched account info for store %@: %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v6);
  if (!a2)
  {
    v21 = [a3 domain];
    if ([v21 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(a3, "code") == 9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:@"Unable to initialize without an iCloud account (CKErrorNotAuthenticated)." forKey:*MEMORY[0x1E696A588]];
      [v12 setObject:a3 forKey:*MEMORY[0x1E696AA08]];
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = *MEMORY[0x1E696A250];
      v15 = 134400;
      goto LABEL_22;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v23 = a3;
    goto LABEL_24;
  }

  v11 = [a2 accountStatus];
  if (v11 != 1 || ![a2 hasValidCredentials])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = v16;
    if (a3)
    {
      [v16 setObject:a3 forKey:*MEMORY[0x1E696AA08]];
    }

    if (v11 == 3)
    {
      v17 = *(*(*(a1 + 64) + 8) + 40);
      if (v17)
      {
        [v12 setObject:v17 forKey:@"PFCloudKitOldUserIdentityKey"];
        [v12 setObject:&unk_1EF435D28 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A250];
        v20 = 134405;
LABEL_49:
        v28 = [v18 errorWithDomain:v19 code:v20 userInfo:v12];
        goto LABEL_50;
      }

      if ([*(*(a1 + 40) + 8) databaseScope] == 1)
      {
        v28 = 0;
        *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_50:
        v22 = v28;
        goto LABEL_51;
      }

      [a2 hasValidCredentials];
      objc_opt_self();
      v31 = *MEMORY[0x1E696A588];
      v27 = @"Unable to initialize without an iCloud account (CKAccountStatusNoAccount).";
LABEL_48:
      [v12 setObject:v27 forKey:v31];
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A250];
      v20 = 134400;
      goto LABEL_49;
    }

    v24 = [a2 hasValidCredentials];
    objc_opt_self();
    if (v11 > 1)
    {
      if (v11 == 4)
      {
        v27 = @"Unable to initialize without a valid iCloud account (CKAccountStatusTemporarilyUnavailable).";
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_40;
        }

        v27 = @"Unable to initialize without a valid iCloud account (CKAccountStatusRestricted).";
      }
    }

    else
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v24)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: failureReasonForAccountStatus was called with an available account and valid credentials.\n", buf, 2u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: failureReasonForAccountStatus was called with an available account and valid credentials.", buf, 2u);
            }
          }

          v27 = @"Unable to initialize because even though there is an available account it does not have valid credentials. The user will need to enter their password in settings, or via a password prompt.";
          goto LABEL_47;
        }

LABEL_40:
        v29 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v46 = v11;
          _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot generate a failure reason for an unknown account status: %ld\n", buf, 0xCu);
        }

        v30 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v46 = v11;
          _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Cannot generate a failure reason for an unknown account status: %ld", buf, 0xCu);
        }

        v27 = @"Unknown account status";
        goto LABEL_47;
      }

      v27 = @"Unable to determine the status of the iCloud account (CKAccountStatusCouldNotDetermine).";
    }

LABEL_47:
    v31 = *MEMORY[0x1E696A588];
    goto LABEL_48;
  }

  if (*(a1 + 80) != 1 || ([a2 deviceToDeviceEncryptionAvailability] & 1) != 0 && (objc_msgSend(a2, "deviceToDeviceEncryptionAvailability") & 2) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_52;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:@"PFCloudKitOldUserIdentityKey"];
    [v12 setObject:&unk_1EF435D28 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A250];
    v15 = 134405;
LABEL_22:
    v22 = [v13 initWithDomain:v14 code:v15 userInfo:v12];
LABEL_51:
    *(*(*(a1 + 72) + 8) + 40) = v22;

    goto LABEL_52;
  }

  v34 = [a2 deviceToDeviceEncryptionAvailability];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v35 = objc_alloc(MEMORY[0x1E696ABC0]);
  v36 = *MEMORY[0x1E696A250];
  v37 = *MEMORY[0x1E696A588];
  if (v34)
  {
    v43 = *MEMORY[0x1E696A588];
    v44 = @"Unable to initialize the CloudKit container because this device does not support device to device encryption.";
    v38 = MEMORY[0x1E695DF20];
    v39 = &v44;
    v40 = &v43;
  }

  else
  {
    v41 = *MEMORY[0x1E696A588];
    v42 = @"Unable to initialize the CloudKit container because this account does not support device to device encryption.";
    v38 = MEMORY[0x1E695DF20];
    v39 = &v42;
    v40 = &v41;
  }

  v23 = [v35 initWithDomain:v36 code:134400 userInfo:{objc_msgSend(v38, "dictionaryWithObjects:forKeys:count:", v39, v40, 1, v41, v42, v43, v44)}];
LABEL_24:
  *(*(*(a1 + 72) + 8) + 40) = v23;
LABEL_52:
  result = dispatch_semaphore_signal(*(a1 + 48));
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2;
    v8[3] = &unk_1E6EC3AD0;
    v8[4] = v2;
    v8[5] = v3;
    v4 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11 = v4;
    v9 = *(a1 + 40);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 48) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v17[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"database.databaseScopeNum = %@ AND %K == YES", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72)), @"needsRecoveryFromIdentityLoss"]);
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v15];
  if (v15[0])
  {
    result = v15[0];
    *(*(*(a1 + 56) + 8) + 40) = result;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v5 = v3;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(*(*(&v11 + 1) + 8 * v8) ownerName:{"ckRecordZoneName"), objc_msgSend(*(*(&v11 + 1) + 8 * v8), "ckOwnerName")}];
          [*(a1 + 48) addObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a4;
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = *(a1 + 32);
      v13 = 136315906;
      v14 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke_3";
      v15 = 1024;
      v16 = 562;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = a4;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Deleting zones %@ in response to Manatee identity loss failed, %@", &v13, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_65(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_66;
    v8[3] = &unk_1E6EC3B48;
    v8[4] = *(a1 + 40);
    v8[5] = v2;
    v8[6] = v3;
    v4 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = v4;
    v9 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not recovery from Manatee identity loss because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_66(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v21 objects:v33 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v22;
    *&v4 = 138412290;
    v19 = v4;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v20 = 0;
        v9 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v8 inDatabaseWithScope:*(a1 + 80) forStore:*(a1 + 40) inContext:*(a1 + 48) error:&v20];
        v10 = v20;
        if (v20)
        {
          goto LABEL_24;
        }

        if (v9)
        {
          [(NSManagedObject *)v9 setNeedsRecoveryFromIdentityLoss:0];
        }

        else
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = v20;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v12 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v19;
            v26 = v20;
            _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }
        }

        if ([*(a1 + 48) hasChanges] && (objc_msgSend(*(a1 + 48), "save:", &v20) & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v15 = Stream;
          v16 = __ckLoggingOverride == 17 ? OS_LOG_TYPE_FAULT : OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(Stream, v16))
          {
            v17 = *(a1 + 56);
            *buf = 136315906;
            v26 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke";
            v27 = 1024;
            v28 = 607;
            v29 = 2112;
            v30 = v17;
            v31 = 2112;
            v32 = v20;
            _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while un-marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v13);
          v10 = v20;
          if (v20)
          {
LABEL_24:
            result = v10;
            *(*(*(a1 + 64) + 8) + 40) = result;
            *(*(*(a1 + 72) + 8) + 24) = 0;
            goto LABEL_25;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v21 objects:v33 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_70(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_71;
    v8[3] = &unk_1E6EC3AD0;
    v8[4] = v2;
    v8[5] = v3;
    v4 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11 = v4;
    v9 = *(a1 + 40);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 48) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_71(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v19[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"database.databaseScopeNum = %@ AND %K == YES", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72)), @"needsNewShareInvitation"]);
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v17];
  if (v17[0])
  {
    result = v17[0];
    *(*(*(a1 + 56) + 8) + 40) = result;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v5 = v3;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    result = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(NSCKRecordZoneMetadata *)*(*(&v13 + 1) + 8 * v8) createRecordZoneID];
          v10 = objc_alloc(getCloudKitCKRecordIDClass[0]());
          v11 = [v10 initWithRecordName:getCloudKitCKRecordNameZoneWideShare() zoneID:v9];
          [*(a1 + 48) addObject:v11];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3_75(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 40) = a4;
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v13 = 136315906;
      v14 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke_3";
      v15 = 1024;
      v16 = 703;
      v17 = 2112;
      v18 = a3;
      v19 = 2112;
      v20 = a4;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Deleting records in Shared database %@ in response to Manatee identity loss failed, %@", &v13, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_76(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_77;
    v8[3] = &unk_1E6EC3B48;
    v8[4] = *(a1 + 40);
    v8[5] = v2;
    v8[6] = v3;
    v4 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = v4;
    v9 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not recovery from Manatee identity loss because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_77(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v21 objects:v33 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v22;
    *&v4 = 138412290;
    v19 = v4;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v20 = 0;
        v9 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v8 inDatabaseWithScope:*(a1 + 80) forStore:*(a1 + 40) inContext:*(a1 + 48) error:&v20];
        v10 = v20;
        if (v20)
        {
          goto LABEL_24;
        }

        if (v9)
        {
          [(NSManagedObject *)v9 setNeedsRecoveryFromIdentityLoss:0];
        }

        else
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = v20;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v12 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v19;
            v26 = v20;
            _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }
        }

        if ([*(a1 + 48) hasChanges] && (objc_msgSend(*(a1 + 48), "save:", &v20) & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v15 = Stream;
          v16 = __ckLoggingOverride == 17 ? OS_LOG_TYPE_FAULT : OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(Stream, v16))
          {
            v17 = *(a1 + 56);
            *buf = 136315906;
            v26 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke";
            v27 = 1024;
            v28 = 748;
            v29 = 2112;
            v30 = v17;
            v31 = 2112;
            v32 = v20;
            _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while un-marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v13);
          v10 = v20;
          if (v20)
          {
LABEL_24:
            result = v10;
            *(*(*(a1 + 64) + 8) + 40) = result;
            *(*(*(a1 + 72) + 8) + 24) = 0;
            goto LABEL_25;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v21 objects:v33 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke_2;
    v8[3] = &unk_1E6EC3B98;
    v8[4] = *(a1 + 40);
    v8[5] = v2;
    v8[6] = v3;
    v9 = *(a1 + 48);
    v4 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke_2(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:*(a1 + 80)];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v2, [v4 databaseScope], *(a1 + 40), *(a1 + 48), v7);
  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = [(NSManagedObject *)v5 hasRecordZone];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 40) = v7[0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_saveZone:(void *)zone error:
{
  v47[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__27;
  v33 = __Block_byref_object_dispose__27;
  v34 = 0;
  v6 = *(self + 48);
  v7 = objc_alloc(getCloudKitCKModifyRecordZonesOperationClass());
  v47[0] = a2;
  v8 = [v7 initWithRecordZonesToSave:objc_msgSend(MEMORY[0x1E695DEC8] recordZoneIDsToDelete:{"arrayWithObjects:count:", v47, 1), 0}];
  -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(self + 72) options], v8);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke;
  v27[3] = &unk_1E6EC3CD8;
  v27[6] = &v29;
  v27[7] = v28;
  v27[8] = &v35;
  v27[4] = a2;
  v27[5] = v6;
  [v8 setModifyRecordZonesCompletionBlock:v27];
  [*(self + 24) addOperation:v8];
  v9 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v11 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(self + 56);
    if (v13)
    {
      v14 = *(v13 + 48);
    }

    else
    {
      v14 = 0;
    }

    requestIdentifier = [*(self + 72) requestIdentifier];
    v40 = "[PFCloudKitSetupAssistant _saveZone:error:]";
    v41 = 1024;
    v16 = @"<null>";
    *buf = 136315906;
    if (requestIdentifier)
    {
      v16 = requestIdentifier;
    }

    v42 = 943;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v16;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Waiting on save zone for store %@ and setup request %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v17 = *(v36 + 24);
  if (v17 == 1)
  {
    databaseScope = [*(self + 8) databaseScope];
    v19 = *(self + 56);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_81;
    v26[3] = &unk_1E6EC3BC0;
    v26[4] = v19;
    v26[5] = a2;
    v26[6] = v28;
    v26[7] = &v35;
    v26[8] = &v29;
    v26[9] = databaseScope;
    [(PFCloudKitStoreMonitor *)v19 performBlock:v26];

    v17 = *(v36 + 24);
  }

  if (!v17)
  {
    v23 = v30[5];
    if (v23)
    {
      if (zone)
      {
        *zone = v23;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v41 = 1024;
        v42 = 996;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v25 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v41 = 1024;
        v42 = 996;
        _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v30[5] = 0;
  v20 = *(v36 + 24);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (uint64_t)_deleteZone:(void *)zone error:
{
  v43[1] = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__27;
  v29 = __Block_byref_object_dispose__27;
  v30 = 0;
  v6 = *(self + 48);
  v7 = objc_alloc(getCloudKitCKModifyRecordZonesOperationClass());
  v43[0] = [a2 zoneID];
  v8 = [v7 initWithRecordZonesToSave:0 recordZoneIDsToDelete:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v43, 1)}];
  -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(self + 72) options], v8);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__PFCloudKitSetupAssistant__deleteZone_error___block_invoke;
  v24[3] = &unk_1E6EC3BE8;
  v24[6] = &v31;
  v24[7] = &v25;
  v24[4] = a2;
  v24[5] = v6;
  [v8 setModifyRecordZonesCompletionBlock:v24];
  [*(self + 24) addOperation:v8];
  v9 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v11 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(self + 56);
    if (v13)
    {
      v14 = *(v13 + 48);
    }

    else
    {
      v14 = 0;
    }

    requestIdentifier = [*(self + 72) requestIdentifier];
    v16 = @"<null>";
    v36 = "[PFCloudKitSetupAssistant _deleteZone:error:]";
    *buf = 136315906;
    if (requestIdentifier)
    {
      v16 = requestIdentifier;
    }

    v37 = 1024;
    v38 = 1024;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v16;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Waiting on delete zone for store %@ and setup request %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v17 = v26[5];
  if ((v32[3] & 1) == 0)
  {
    v21 = v26[5];
    if (v21)
    {
      if (zone)
      {
        *zone = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v37 = 1024;
        v38 = 1031;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v37 = 1024;
        v38 = 1031;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v18 = *(v32 + 24);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

intptr_t __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 48) + 8) + 40) = a4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend(v10 "zoneID")])
          {
            *(*(*(a1 + 56) + 8) + 24) = [v10 capabilities];
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }
        }

        v7 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_81(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_2;
    v8[3] = &unk_1E6EC3B98;
    v8[4] = *(a1 + 40);
    v8[5] = v2;
    v8[6] = v3;
    v9 = *(a1 + 48);
    v4 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 80), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", *(*(*(a1 + 56) + 8) + 24) & 1), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", (*(*(*(a1 + 56) + 8) + 24) >> 1) & 1), -[NSManagedObject setSupportsZoneSharing:](v3, "setSupportsZoneSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 3) & 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  return result;
}

intptr_t __46__PFCloudKitSetupAssistant__deleteZone_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ([a3 containsObject:{objc_msgSend(*(a1 + 32), "zoneID")}])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
LABEL_13:
    *(*(*(a1 + 48) + 8) + 40) = v4;
    goto LABEL_14;
  }

  if (!a2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Zone fetch didn't return an error or a dictionary of zones\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Zone fetch didn't return an error or a dictionary of zones", buf, 2u);
    }

    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A250];
    v16 = *MEMORY[0x1E696A588];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not locate the desired zone in the database with scope '%@': %@", (softLinkCKDatabaseScopeString[0])(*(a1 + 72)), objc_msgSend(*(a1 + 32), "zoneID")];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v17;
    v12 = &v16;
    goto LABEL_12;
  }

  v5 = [a2 objectForKey:{objc_msgSend(*(a1 + 32), "zoneID")}];
  if (!v5)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A250];
    v18 = *MEMORY[0x1E696A588];
    v19[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not locate the desired zone in the database with scope '%@': %@", (softLinkCKDatabaseScopeString[0])(*(a1 + 72)), objc_msgSend(*(a1 + 32), "zoneID")];
    v10 = MEMORY[0x1E695DF20];
    v11 = v19;
    v12 = &v18;
LABEL_12:
    v4 = [v8 initWithDomain:v9 code:134400 userInfo:{objc_msgSend(v10, "dictionaryWithObjects:forKeys:count:", v11, v12, 1)}];
    goto LABEL_13;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  *(*(*(a1 + 64) + 8) + 24) = [v5 capabilities];
LABEL_14:
  result = dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_86(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2;
    v8[3] = &unk_1E6EC3B98;
    v8[4] = *(a1 + 40);
    v8[5] = v2;
    v8[6] = v3;
    v9 = *(a1 + 48);
    v4 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 80), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", *(*(*(a1 + 56) + 8) + 24) & 1), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", (*(*(*(a1 + 56) + 8) + 24) >> 1) & 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  return result;
}

void __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_87(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2_88;
    v8[3] = &unk_1E6EC3978;
    v4 = *(a1 + 40);
    v10 = *(a1 + 64);
    v8[4] = v4;
    v8[5] = v2;
    v8[6] = v3;
    v9 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2_88(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 72), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", 0), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", 0), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  return result;
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v4 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = v4;
    v9[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2;
    v9[3] = &unk_1E6EC3C60;
    v5 = *(a1 + 40);
    v12 = *(a1 + 80);
    v9[4] = v5;
    v9[5] = v2;
    v9[6] = v3;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v9];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E696A250];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 72) + 8) + 40) = [v6 initWithDomain:v7 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:*(a1 + 88) inDatabaseWithScope:*(a1 + 40) forStore:*(a1 + 48) inContext:v6 error:?];
  v3 = v2;
  if (!v2 || (*(*(*(a1 + 56) + 8) + 24) = -[NSManagedObject hasSubscription](v2, "hasSubscription"), *(*(*(a1 + 64) + 8) + 24) = [-[NSManagedObject database](v3 "database")], result = objc_msgSend(*(a1 + 48), "save:", v6), (result & 1) == 0))
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    result = v6[0];
    *(*(*(a1 + 80) + 8) + 40) = result;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_4;
    v8[3] = &unk_1E6EC3BC0;
    v8[4] = v2;
    v8[5] = v3;
    v9 = *(a1 + 40);
    v4 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_4(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = [NSCKDatabaseMetadata databaseMetadataForScope:*(a1 + 32) forStore:*(a1 + 40) inContext:v5 error:?];
  if (!v2 || (*(*(*(a1 + 48) + 8) + 24) = -[NSManagedObject hasSubscription](v2, "hasSubscription"), result = [*(a1 + 40) save:v5], (result & 1) == 0))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v5[0];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(a2);
      }

      if ([objc_msgSend(*(*(&v28 + 1) + 8 * v11) "subscriptionID")])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [a2 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Saved subscriptions was unexpectedly nil.\n", buf, 2u);
  }

  v14 = _PFLogGetLogStream(17);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
LABEL_15:
    if (a4)
    {
      goto LABEL_16;
    }

LABEL_30:
    if (v12)
    {
LABEL_31:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_34;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A250];
    v32 = *MEMORY[0x1E696A588];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Subscription save succeeded but did not return '%@' as a saved subscription", objc_msgSend(*(a1 + 32), "subscriptionID")];
    v22 = [v23 initWithDomain:v24 code:134400 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v33, &v32, 1)}];
LABEL_33:
    *(*(*(a1 + 56) + 8) + 40) = v22;
    goto LABEL_34;
  }

  *buf = 0;
  _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Saved subscriptions was unexpectedly nil.", buf, 2u);
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v17 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v18))
    {
      *buf = 136315650;
      v35 = "[PFCloudKitSetupAssistant _setupDatabaseSubscriptionIfNecessary:]_block_invoke";
      v36 = 1024;
      *v37 = 1350;
      *&v37[4] = 2112;
      *&v37[6] = a4;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Failed to save our subscription and had an operation error, %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_31;
  }

  if (![a2 count])
  {
    v22 = a4;
    goto LABEL_33;
  }

  v19 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v27 = [a2 count];
    *buf = 134218498;
    v35 = v27;
    v36 = 2112;
    *v37 = a2;
    *&v37[8] = 2112;
    *&v37[10] = a4;
    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Saved some subscriptions (%lu) %@, but had an operation error, %@\n", buf, 0x20u);
  }

  v20 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v21 = [a2 count];
    *buf = 134218498;
    v35 = v21;
    v36 = 2112;
    *v37 = a2;
    *&v37[8] = 2112;
    *&v37[10] = a4;
    _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Saved some subscriptions (%lu) %@, but had an operation error, %@", buf, 0x20u);
  }

LABEL_34:
  *(*(*(a1 + 64) + 8) + 24) = [a3 containsObject:@"com.apple.coredata.cloudkit.zone.subscription"];
  result = dispatch_semaphore_signal(*(a1 + 40));
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_99(uint64_t a1)
{
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2_100;
    v5[3] = &unk_1E6EC3BC0;
    v5[4] = v2;
    v5[5] = v3;
    v6 = *(a1 + 40);
    v4 = *(a1 + 64);
    v7 = *(a1 + 56);
    v8 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v5];
  }
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2_100(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    v3 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    v4 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v3 inDatabaseWithScope:*(a1 + 72) forStore:*(a1 + 32) inContext:*(a1 + 40) error:&v9];
    v5 = (*(*(a1 + 48) + 8) + 24);
    if (v4)
    {
      v6 = v4;
      if (*v5 == 1)
      {
        [-[NSManagedObject database](v4 "database")];
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        [(NSManagedObject *)v6 setHasSubscription:0];
      }

      if ([*(a1 + 40) save:&v9])
      {
        goto LABEL_10;
      }

      v5 = (*(*(a1 + 48) + 8) + 24);
    }

    *v5 = 0;
    *(*(*(a1 + 64) + 8) + 40) = v9;
LABEL_10:

    return;
  }

  v7 = [NSCKDatabaseMetadata databaseMetadataForScope:v2 forStore:*(a1 + 32) inContext:*(a1 + 40) error:&v9];
  v8 = *(*(a1 + 48) + 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  if (*(v8 + 24) == 1)
  {
    [(NSManagedObject *)v7 setHasSubscription:1];
    if (([*(a1 + 40) save:&v9] & 1) == 0)
    {
      v8 = *(*(a1 + 48) + 8);
LABEL_15:
      *(v8 + 24) = 0;
      *(*(*(a1 + 64) + 8) + 40) = v9;
    }
  }
}

intptr_t __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v9 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v9 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    v15 = 136316162;
    v16 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
    v17 = 1024;
    v18 = 1465;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = a2;
    v23 = 2112;
    v24 = a3;
    _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Fetched user recordID for store %@: %@\n%@", &v15, 0x30u);
  }

  objc_autoreleasePoolPop(v6);
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v11 = a2;
    v12 = 56;
  }

  else
  {
    v11 = a3;
    v12 = 64;
  }

  *(*(*(a1 + v12) + 8) + 40) = v11;
  result = dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_102(uint64_t a1)
{
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2;
    v5[3] = &unk_1E6EC3D28;
    v5[4] = v2;
    v5[5] = v3;
    v4 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v5];
  }
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2(uint64_t a1)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v32[0] = 0;
  v47[0] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
  v47[1] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
  v2 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2], *(a1 + 32), *(a1 + 40), v32);
  v3 = v2;
  if (!v2)
  {
    v14 = a1 + 64;
LABEL_31:
    *(*(*v14 + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 40) = v32[0];
    goto LABEL_32;
  }

  v4 = [v2 objectForKey:@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey"];
  if (!v4)
  {
    v4 = [NSCKMetadataEntry insertMetadataEntryWithKey:0 BOOLValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:?];
  }

  if (![(NSManagedObject *)v4 BOOLValue])
  {
    [(NSManagedObject *)v4 setBoolValue:1];
    +[NSCKMetadataEntry insertMetadataEntryWithKey:stringValue:forStore:intoManagedObjectContext:](NSCKMetadataEntry, @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey", [*(*(*(a1 + 56) + 8) + 40) recordName], *(a1 + 32), *(a1 + 40));
    goto LABEL_29;
  }

  v5 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"];
  v6 = v5;
  if (!v5)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v15 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v17 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v18))
    {
      v19 = *(a1 + 48);
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v38 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
      v39 = 1024;
      v40 = 1520;
      v41 = 2112;
      v42 = v19;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@: CKIdentity record changed from nil to %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33[0] = @"PFCloudKitNewUserIdentityKey";
    v22 = [*(*(*(a1 + 56) + 8) + 40) recordName];
    v33[1] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v34[0] = v22;
    v34[1] = &unk_1EF435D58;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    goto LABEL_28;
  }

  v7 = [objc_msgSend(v5 "stringValue")];
  v8 = objc_autoreleasePoolPush();
  if ((v7 & 1) == 0)
  {
    v24 = __PFCloudKitLoggingGetStream();
    v25 = v24;
    if (__ckLoggingOverride == 17)
    {
      v26 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v26 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(v24, v26))
    {
      v27 = *(a1 + 48);
      v28 = [v6 stringValue];
      v29 = [*(*(*(a1 + 56) + 8) + 40) recordName];
      *buf = 136316162;
      v38 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke_2";
      v39 = 1024;
      v40 = 1508;
      v41 = 2112;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): %@: CKIdentity record has changed from %@ to %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v35[0] = @"PFCloudKitOldUserIdentityKey";
    v36[0] = [v6 stringValue];
    v35[1] = @"PFCloudKitNewUserIdentityKey";
    v30 = [*(*(*(a1 + 56) + 8) + 40) recordName];
    v35[2] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v36[1] = v30;
    v36[2] = &unk_1EF435D40;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
LABEL_28:
    *(*(*(a1 + 72) + 8) + 40) = [v21 initWithDomain:*MEMORY[0x1E696A250] code:134405 userInfo:v23];
    goto LABEL_29;
  }

  v9 = __PFCloudKitLoggingGetStream();
  v10 = v9;
  v11 = __ckLoggingOverride;
  if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
  {
    v11 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = *(a1 + 48);
    v13 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136315906;
    v38 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
    v39 = 1024;
    v40 = 1516;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: CKIdentity record matches store: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_29:
  v14 = a1 + 64;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && ([*(a1 + 40) save:v32] & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  v31 = *MEMORY[0x1E69E9840];
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_107(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2_108;
    v8[3] = &unk_1E6EC3D50;
    v8[4] = v2;
    v8[5] = v3;
    v4 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identity check was cancelled because the store was removed from the coordinator."];
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2_108(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v38[0] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
  v38[1] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
  v2 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2], *(a1 + 32), *(a1 + 40), &v27);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  if (![objc_msgSend(v2 objectForKey:{@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey", "BOOLValue"}])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v11 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v13 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v14 = 17;
    }

    else
    {
      v14 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v14 = 16;
    }

    if (__ckLoggingOverride)
    {
      v15 = v14;
    }

    else
    {
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      v16 = *(a1 + 48);
      v17 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 136315906;
      v29 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
      v30 = 1024;
      v31 = 1597;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_18565F000, v13, v15, "CoreData+CloudKit: %s(%d): %@: First identity fetch failed due to authentication but store was never assigned to a user record: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey"];
    if (v18)
    {
      [v18 setBoolValue:1];
    }

    else
    {
      [NSCKMetadataEntry insertMetadataEntryWithKey:1 BOOLValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:?];
    }

    if ([*(a1 + 40) save:&v27])
    {
      goto LABEL_32;
    }

LABEL_30:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = v27;
    goto LABEL_31;
  }

  v4 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"];
  v5 = *(*(a1 + 56) + 8);
  if (v4)
  {
    v6 = v4;
    *(v5 + 24) = 0;
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *MEMORY[0x1E696A250];
    v36[0] = @"PFCloudKitOldUserIdentityKey";
    v9 = [v6 stringValue];
    v36[1] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v37[0] = v9;
    v37[1] = &unk_1EF435D28;
    v10 = [v7 initWithDomain:v8 code:134405 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v37, v36, 2)}];
LABEL_31:
    *(*(*(a1 + 64) + 8) + 40) = v10;
    goto LABEL_32;
  }

  *(v5 + 24) = 1;
  v19 = objc_autoreleasePoolPush();
  v20 = __PFCloudKitLoggingGetStream();
  v21 = v20;
  if (__ckLoggingOverride == 17)
  {
    v22 = 17;
  }

  else
  {
    v22 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v22 = 16;
  }

  if (__ckLoggingOverride)
  {
    v23 = v22;
  }

  else
  {
    v23 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v20, v23))
  {
    v24 = *(a1 + 48);
    v25 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    v29 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke_2";
    v30 = 1024;
    v31 = 1593;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_18565F000, v21, v23, "CoreData+CloudKit: %s(%d): %@: Identity fetch failed due to authentication but store was never assigned to a user record: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_32:
  v26 = *MEMORY[0x1E69E9840];
}

void __96__PFCloudKitSetupAssistant__checkAndTruncateEventHistoryIfNeededWithManagedObjectContext_error___block_invoke(uint64_t *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  v3 = a1[4];
  if (v3)
  {
    v4 = [(NSManagedObjectContext *)v3 _countForFetchRequest_:v2 error:(*(a1[5] + 8) + 40)];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1[6] + 8) + 24) = 0;
      v5 = *(*(a1[5] + 8) + 40);
    }

    else if (v4 >= 0x4E21)
    {
      [(NSFetchRequest *)v2 setFetchLimit:v4 - 10000];
      [(NSFetchRequest *)v2 setResultType:1];
      v11[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"SELF" ascending:1];
      -[NSFetchRequest setSortDescriptors:](v2, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1]);
      v6 = [a1[4] executeFetchRequest:v2 error:*(a1[5] + 8) + 40];
      if (v6)
      {
        v7 = [[NSBatchDeleteRequest alloc] initWithObjectIDs:v6];
        [(NSBatchDeleteRequest *)v7 setResultType:0];
        *(*(a1[6] + 8) + 24) = [objc_msgSend(objc_msgSend(a1[4] executeRequest:v7 error:{*(a1[5] + 8) + 40), "result"), "BOOLValue"}];
        if ((*(*(a1[6] + 8) + 24) & 1) == 0)
        {
          v8 = *(*(a1[5] + 8) + 40);
        }
      }

      else
      {
        *(*(a1[6] + 8) + 24) = 0;
        v9 = *(*(a1[5] + 8) + 40);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end