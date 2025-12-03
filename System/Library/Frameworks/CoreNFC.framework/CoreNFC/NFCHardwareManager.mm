@interface NFCHardwareManager
+ (id)sharedHardwareManager;
- (BOOL)areFeaturesSupported:(unint64_t)supported outError:(id *)error;
- (NFCHardwareManager)init;
- (NSArray)getDelegates;
- (id)_queueSession:(id)session;
- (id)getReaderSessionWithKey:(id)key;
- (void)_cleanupPresentmentAssertion;
- (void)addNFCHardwareManagerCallbacksListener:(id)listener;
- (void)areFeaturesSupported:(unint64_t)supported expiry:(double)expiry completion:(id)completion;
- (void)dequeueSession:(id)session;
- (void)didExpire;
- (void)didFinishCooldown;
- (void)didInvalidate;
- (void)hwStateDidChange:(unsigned int)change;
- (void)isCardSessionEligibleWithCompletionHandler:(id)handler;
- (void)queueCardFieldDetectSession:(id)session completionHandler:(id)handler;
- (void)queueCardSession:(id)session sessionConfig:(id)config completionHandler:(id)handler;
- (void)queueReaderSession:(id)session sessionConfig:(id)config completionHandler:(id)handler;
- (void)releasePresentmentSuppression:(id)suppression completion:(id)completion;
- (void)requestPresentmentSuppressionWithDelegate:(id)delegate completion:(id)completion;
@end

@implementation NFCHardwareManager

+ (id)sharedHardwareManager
{
  if (qword_27DE9A3D8 != -1)
  {
    dispatch_once(&qword_27DE9A3D8, &unk_284A4F4B0);
  }

  v3 = qword_27DE9A3D0;

  return v3;
}

- (NFCHardwareManager)init
{
  v13.receiver = self;
  v13.super_class = NFCHardwareManager;
  v2 = [(NFCHardwareManager *)&v13 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = weakObjectsHashTable;

    v5 = [NFCSession alloc];
    v6 = +[NFCHardwareManagerInterface interface];
    v7 = +[NFCHardwareManagerCallbacks interface];
    v8 = [(NFCSession *)v5 initWithMachServiceName:@"com.apple.nfcd.service.corenfc" remoteObjectInterface:v6 exportedObjectInterface:v7 exportedObject:v2 delegate:v2];
    xpcSession = v2->_xpcSession;
    v2->_xpcSession = v8;

    v10 = objc_opt_new();
    queuedCoreNFCSessions = v2->_queuedCoreNFCSessions;
    v2->_queuedCoreNFCSessions = v10;

    *&v2->_readerSessionLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)_queueSession:(id)session
{
  sessionCopy = session;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random()];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372CD430;
  v11[3] = &unk_278A2A460;
  v11[4] = self;
  v12 = sessionCopy;
  v6 = v5;
  v13 = v6;
  v7 = sessionCopy;
  os_unfair_lock_lock(&self->_readerSessionLock);
  sub_2372CD430(v11);
  os_unfair_lock_unlock(&self->_readerSessionLock);
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)queueReaderSession:(id)session sessionConfig:(id)config completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  xpcSession = self->_xpcSession;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2372CD59C;
  v21[3] = &unk_278A2A488;
  v12 = handlerCopy;
  v22 = v12;
  configCopy = config;
  v14 = [(NFCSession *)xpcSession synchronousRemoteObjectProxyWithErrorHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2372CD628;
  v17[3] = &unk_278A2A4B0;
  v17[4] = self;
  v18 = sessionCopy;
  v19 = v12;
  v20 = a2;
  v15 = v12;
  v16 = sessionCopy;
  [v14 queueReaderSession:v16 sessionConfig:configCopy completion:v17];
}

- (void)queueCardSession:(id)session sessionConfig:(id)config completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  xpcSession = self->_xpcSession;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2372CDAF4;
  v21[3] = &unk_278A2A488;
  v12 = handlerCopy;
  v22 = v12;
  configCopy = config;
  v14 = [(NFCSession *)xpcSession synchronousRemoteObjectProxyWithErrorHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2372CDB80;
  v17[3] = &unk_278A2A4D8;
  v17[4] = self;
  v18 = sessionCopy;
  v19 = v12;
  v20 = a2;
  v15 = v12;
  v16 = sessionCopy;
  [v14 queueCardSession:v16 sessionConfig:configCopy completion:v17];
}

- (void)queueCardFieldDetectSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  xpcSession = self->_xpcSession;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2372CDF14;
  v18[3] = &unk_278A2A488;
  v10 = handlerCopy;
  v19 = v10;
  v11 = [(NFCSession *)xpcSession synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2372CDF2C;
  v14[3] = &unk_278A2A500;
  v14[4] = self;
  v15 = sessionCopy;
  v16 = v10;
  v17 = a2;
  v12 = v10;
  v13 = sessionCopy;
  [v11 queueCardFieldDetectSession:v13 completion:v14];
}

- (void)requestPresentmentSuppressionWithDelegate:(id)delegate completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2372CE568;
  v38[3] = &unk_278A29E10;
  v38[4] = self;
  v38[5] = &v39;
  os_unfair_lock_lock(&self->_presentmentSuppressionLock);
  sub_2372CE568(v38);
  os_unfair_lock_unlock(&self->_presentmentSuppressionLock);
  if (*(v40 + 24) == 1)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Resource unavailable", v14, ClassName, Name, 209);
    }

    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      *buf = 67109890;
      v46 = v17;
      v47 = 2082;
      v48 = v18;
      v49 = 2082;
      v50 = v19;
      v51 = 1024;
      v52 = 209;
      _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Resource unavailable", buf, 0x22u);
    }

    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v43[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No resources"];
    v44[0] = v22;
    v44[1] = &unk_284A53E48;
    v43[1] = @"Line";
    v43[2] = @"Method";
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", sel_getName(a2)];
    v44[2] = v23;
    v43[3] = *MEMORY[0x277CCA068];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s:%d", sel_getName(a2), 210];
    v44[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v26 = [v20 initWithDomain:v21 code:34 userInfo:v25];
    completionCopy[2](completionCopy, 0, v26);
  }

  else
  {
    xpcSession = self->_xpcSession;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2372CE584;
    v36[3] = &unk_278A2A488;
    v28 = completionCopy;
    v37 = v28;
    v29 = [(NFCSession *)xpcSession remoteObjectProxyWithErrorHandler:v36];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2372CE59C;
    v32[3] = &unk_278A2A528;
    v32[4] = self;
    v35 = a2;
    v33 = delegateCopy;
    v34 = v28;
    [v29 requestSuppressPresentmentWithCompletion:v32];

    v21 = v37;
  }

  _Block_object_dispose(&v39, 8);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)releasePresentmentSuppression:(id)suppression completion:(id)completion
{
  v63[4] = *MEMORY[0x277D85DE8];
  suppressionCopy = suppression;
  completionCopy = completion;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_2372CED60;
  v50 = sub_2372CED70;
  v51 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2372CED78;
  v42[3] = &unk_278A2A550;
  v42[4] = self;
  v9 = suppressionCopy;
  v44 = &v46;
  v45 = a2;
  v43 = v9;
  os_unfair_lock_lock(&self->_presentmentSuppressionLock);
  v10 = sub_2372CED78(v42);
  os_unfair_lock_unlock(&self->_presentmentSuppressionLock);
  if (v10)
  {
    completionCopy[2](completionCopy, v10);
  }

  else if (v47[5])
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      unsignedIntegerValue = [v9 unsignedIntegerValue];
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v12(6, "%c[%{public}s %{public}s]:%i handle=%lu", v17, ClassName, Name, 261, unsignedIntegerValue);
    }

    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
      *buf = 67110146;
      v53 = v20;
      v54 = 2082;
      v55 = v21;
      v56 = 2082;
      v57 = v22;
      v58 = 1024;
      v59 = 261;
      v60 = 2048;
      v61 = unsignedIntegerValue2;
      _os_log_impl(&dword_23728C000, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i handle=%lu", buf, 0x2Cu);
    }

    xpcSession = self->_xpcSession;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2372CF088;
    v40[3] = &unk_278A2A488;
    v25 = completionCopy;
    v41 = v25;
    v26 = [(NFCSession *)xpcSession remoteObjectProxyWithErrorHandler:v40];
    v27 = v47[5];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2372CF098;
    v37[3] = &unk_278A2A578;
    v37[4] = self;
    v39 = a2;
    v38 = v25;
    [v26 releaseSuppressPresentmentAssertion:v27 completion:v37];
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v62[0] = *MEMORY[0x277CCA450];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v63[0] = v30;
    v63[1] = &unk_284A53E78;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", sel_getName(a2)];
    v63[2] = v31;
    v62[3] = *MEMORY[0x277CCA068];
    v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s:%d", sel_getName(a2), 257];
    v63[3] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];
    v34 = [v28 initWithDomain:v29 code:10 userInfo:v33];
    completionCopy[2](completionCopy, v34);
  }

  _Block_object_dispose(&v46, 8);
  v35 = *MEMORY[0x277D85DE8];
}

- (void)isCardSessionEligibleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcSession = self->_xpcSession;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2372CF3BC;
  v11[3] = &unk_278A2A488;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(NFCSession *)xpcSession remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372CF3D4;
  v9[3] = &unk_278A2A5A0;
  v10 = v6;
  v8 = v6;
  [v7 isCardSessionEligibleWithCompletion:v9];
}

- (void)dequeueSession:(id)session
{
  sessionCopy = session;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372CF520;
  v6[3] = &unk_278A29E60;
  v6[4] = self;
  v7 = sessionCopy;
  v5 = sessionCopy;
  os_unfair_lock_lock(&self->_readerSessionLock);
  sub_2372CF520(v6);
  os_unfair_lock_unlock(&self->_readerSessionLock);
}

- (NSArray)getDelegates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_delegates allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (void)addNFCHardwareManagerCallbacksListener:(id)listener
{
  obj = self;
  listenerCopy = listener;
  objc_sync_enter(obj);
  [(NSHashTable *)obj->_delegates addObject:listenerCopy];

  objc_sync_exit(obj);
}

- (BOOL)areFeaturesSupported:(unint64_t)supported outError:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_2372CED60;
  v52 = sub_2372CED70;
  v53 = 0;
  if (error)
  {
    *error = 0;
  }

  v6 = MEMORY[0x277D85DD0];
  v7 = 5;
  while (1)
  {
    xpcSession = self->_xpcSession;
    v47[0] = v6;
    v47[1] = 3221225472;
    v47[2] = sub_2372CFBE0;
    v47[3] = &unk_278A2A100;
    v47[4] = &v48;
    v9 = [(NFCSession *)xpcSession synchronousRemoteObjectProxyWithErrorHandler:v47];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2372CFBF0;
    v46[3] = &unk_278A2A5C8;
    v46[4] = &v48;
    v46[5] = &v54;
    [v9 areFeaturesSupported:supported completion:v46];

    v10 = v49[5];
    if (!v10)
    {
LABEL_16:
      v27 = *(v55 + 24);
      goto LABEL_36;
    }

    domain = [v10 domain];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v13 = [domain isEqualToString:v12];

    Logger = NFLogGetLogger();
    v15 = Logger;
    if (v13)
    {
      break;
    }

    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v15(4, "%c[%{public}s %{public}s]:%i XPC Error: %@", v20, ClassName, Name, 370, v49[5]);
    }

    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(self);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      v26 = v49[5];
      *buf = 67110146;
      v61 = v23;
      v62 = 2082;
      v63 = v24;
      v64 = 2082;
      v65 = v25;
      v66 = 1024;
      v67 = 370;
      v68 = 2112;
      v69 = v26;
      _os_log_impl(&dword_23728C000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Error: %@", buf, 0x2Cu);
    }

    if (!--v7)
    {
      goto LABEL_16;
    }
  }

  if (Logger)
  {
    v28 = object_getClass(self);
    v29 = class_isMetaClass(v28);
    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    v32 = 45;
    if (v29)
    {
      v32 = 43;
    }

    v15(4, "%c[%{public}s %{public}s]:%i Stack error: %@", v32, v30, v31, 354, v49[5]);
  }

  v33 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = object_getClass(self);
    if (class_isMetaClass(v34))
    {
      v35 = 43;
    }

    else
    {
      v35 = 45;
    }

    v36 = object_getClassName(self);
    v37 = sel_getName(a2);
    v38 = v49[5];
    *buf = 67110146;
    v61 = v35;
    v62 = 2082;
    v63 = v36;
    v64 = 2082;
    v65 = v37;
    v66 = 1024;
    v67 = 354;
    v68 = 2112;
    v69 = v38;
    _os_log_impl(&dword_23728C000, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stack error: %@", buf, 0x2Cu);
  }

  if (!error)
  {
    goto LABEL_35;
  }

  if ([v49[5] code] != 57)
  {
    if ([v49[5] code] == 58)
    {
      v39 = 203;
      goto LABEL_33;
    }

    if ([v49[5] code] == 70)
    {
      v39 = 7;
      goto LABEL_33;
    }

    v58[0] = *MEMORY[0x277CCA450];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Stack Error"];
    v58[1] = *MEMORY[0x277CCA7E8];
    v59[0] = v40;
    v59[1] = v49[5];
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    *error = [NFCError errorWithCode:202 userInfo:v41];

LABEL_35:
    v27 = 0;
    goto LABEL_36;
  }

  v39 = 1;
LABEL_33:
  [NFCError errorWithCode:v39];
  *error = v27 = 0;
LABEL_36:
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  v42 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

- (void)areFeaturesSupported:(unint64_t)supported expiry:(double)expiry completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v49 = 0;
  v10 = [(NFCHardwareManager *)self areFeaturesSupported:supported outError:&v49];
  v11 = v49;
  if (!v11)
  {
    completionCopy[2](completionCopy, v10, 0);
    goto LABEL_7;
  }

  v12 = v11;
  if ([v11 code] == 1 || objc_msgSend(v12, "code") == 202)
  {
    (completionCopy)[2](completionCopy, 0, v12);
LABEL_5:

    goto LABEL_7;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hwSupportStateUpdate)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(4, "%c[%{public}s %{public}s]:%i Previous operation in progress", v20, ClassName, Name, 392);
    }

    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(selfCopy);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(selfCopy);
      v25 = sel_getName(a2);
      *buf = 67109890;
      v51 = v23;
      v52 = 2082;
      v53 = v24;
      v54 = 2082;
      v55 = v25;
      v56 = 1024;
      v57 = 392;
      _os_log_impl(&dword_23728C000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Previous operation in progress", buf, 0x22u);
    }

    v26 = [NFCError errorWithCode:203];
    (completionCopy)[2](completionCopy, 0, v26);

    objc_sync_exit(selfCopy);
    goto LABEL_5;
  }

  v27 = dispatch_semaphore_create(0);
  hwSupportStateUpdate = selfCopy->_hwSupportStateUpdate;
  selfCopy->_hwSupportStateUpdate = v27;

  objc_sync_exit(selfCopy);
  v29 = dispatch_time(0, (expiry * 1000000.0 * 1000.0));
  v30 = dispatch_semaphore_wait(selfCopy->_hwSupportStateUpdate, v29);
  v31 = selfCopy;
  objc_sync_enter(v31);
  v32 = selfCopy->_hwSupportStateUpdate;
  selfCopy->_hwSupportStateUpdate = 0;

  objc_sync_exit(v31);
  if (v30)
  {
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(v31);
      v36 = class_isMetaClass(v35);
      v37 = object_getClassName(v31);
      v47 = sel_getName(a2);
      v38 = 45;
      if (v36)
      {
        v38 = 43;
      }

      v34(4, "%c[%{public}s %{public}s]:%i HW state query timeout", v38, v37, v47, 407);
    }

    v39 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(v31);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(v31);
      v43 = sel_getName(a2);
      *buf = 67109890;
      v51 = v41;
      v52 = 2082;
      v53 = v42;
      v54 = 2082;
      v55 = v43;
      v56 = 1024;
      v57 = 407;
      _os_log_impl(&dword_23728C000, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i HW state query timeout", buf, 0x22u);
    }
  }

  v48 = v12;
  v44 = [(NFCHardwareManager *)v31 areFeaturesSupported:supported outError:&v48];
  v45 = v48;

  (completionCopy)[2](completionCopy, v44, v45);
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)getReaderSessionWithKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2372CED60;
  v15 = sub_2372CED70;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372D01AC;
  v8[3] = &unk_278A29E88;
  v9 = keyCopy;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  os_unfair_lock_lock(&self->_readerSessionLock);
  sub_2372D01AC(v8);
  os_unfair_lock_unlock(&self->_readerSessionLock);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)hwStateDidChange:(unsigned int)change
{
  v32 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i HW support state update: %lu", v10, ClassName, Name, 445, change);
  }

  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v23 = v13;
    v24 = 2082;
    v25 = object_getClassName(self);
    v26 = 2082;
    v27 = sel_getName(a2);
    v28 = 1024;
    v29 = 445;
    v30 = 2048;
    changeCopy = change;
    _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HW support state update: %lu", buf, 0x2Cu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_delegates allObjects];
  hwSupportStateUpdate = selfCopy->_hwSupportStateUpdate;
  if (hwSupportStateUpdate)
  {
    dispatch_semaphore_signal(hwSupportStateUpdate);
  }

  objc_sync_exit(selfCopy);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2372D0414;
  v20[3] = &unk_278A2A5E8;
  changeCopy2 = change;
  [allObjects enumerateObjectsUsingBlock:v20];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupPresentmentAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2372CED60;
  v10 = sub_2372CED70;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2372D055C;
  v5[3] = &unk_278A2A610;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->_presentmentSuppressionLock);
  sub_2372D055C(v5);
  os_unfair_lock_unlock(&self->_presentmentSuppressionLock);
  v3 = v7[5];
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_2372D05BC;
    v4[3] = &unk_278A2A3E8;
    v4[4] = self;
    [(NFCHardwareManager *)self releasePresentmentSuppression:v3 completion:v4];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)didInvalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_delegates allObjects];
  objc_sync_exit(selfCopy);

  [allObjects enumerateObjectsUsingBlock:&unk_284A4F4D0];
  [(NFCHardwareManager *)selfCopy _cleanupPresentmentAssertion];
}

- (void)didExpire
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2372CED60;
  v20 = sub_2372CED70;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2372CED60;
  v14 = sub_2372CED70;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372D090C;
  v9[3] = &unk_278A2A658;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  os_unfair_lock_lock(&self->_presentmentSuppressionLock);
  sub_2372D090C(v9);
  os_unfair_lock_unlock(&self->_presentmentSuppressionLock);
  if (v11[5])
  {
    xpcSession = self->_xpcSession;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2372D098C;
    v8[3] = &unk_278A2A2A8;
    v8[4] = self;
    v8[5] = a2;
    v5 = [(NFCSession *)xpcSession remoteObjectProxyWithErrorHandler:v8];
    v6 = v11[5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2372D0B14;
    v7[3] = &unk_278A2A2A8;
    v7[4] = self;
    v7[5] = a2;
    [v5 releaseSuppressPresentmentAssertion:v6 completion:v7];
  }

  [v17[5] didExpire];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

- (void)didFinishCooldown
{
  v19 = *MEMORY[0x277D85DE8];
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 531);
  }

  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v12;
    *v17 = 2082;
    *&v17[2] = object_getClassName(self);
    *&v17[10] = 2082;
    *&v17[12] = sel_getName(a2);
    *&v17[20] = 1024;
    *&v17[22] = 531;
    _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  *buf = 0;
  *v17 = buf;
  *&v17[8] = 0x3032000000;
  *&v17[16] = sub_2372CED60;
  *&v17[24] = sub_2372CED70;
  v18 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2372D0ED8;
  v15[3] = &unk_278A29E10;
  v15[4] = self;
  v15[5] = buf;
  os_unfair_lock_lock(&self->_presentmentSuppressionLock);
  sub_2372D0ED8(v15);
  os_unfair_lock_unlock(&self->_presentmentSuppressionLock);
  [(NFCHardwareManager *)self _cleanupPresentmentAssertion];
  [*(*v17 + 40) didFinishCooldown];
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x277D85DE8];
}

@end