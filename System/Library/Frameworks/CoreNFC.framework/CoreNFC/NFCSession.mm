@interface NFCSession
- (NFCSession)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObjectInterface:(id)a5 exportedObject:(id)a6 delegate:(id)a7;
- (id)_connectIfNeeded;
- (id)_exportedObjectClassName;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_invalidate;
- (void)dealloc;
@end

@implementation NFCSession

- (NFCSession)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObjectInterface:(id)a5 exportedObject:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = NFCSession;
  v17 = [(NFCSession *)&v26 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v19 = *(v17 + 1);
    *(v17 + 1) = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.corenfc.session.xpc", v20);
    v22 = *(v17 + 4);
    *(v17 + 4) = v21;

    dispatch_queue_set_specific(*(v17 + 4), *MEMORY[0x277D82BB0], 1, 0);
    objc_storeStrong(v17 + 5, a4);
    objc_storeStrong(v17 + 6, a5);
    objc_storeWeak(v17 + 8, v15);
    v23 = [v12 copy];
    v24 = *(v17 + 7);
    *(v17 + 7) = v23;

    objc_storeWeak(v17 + 9, v16);
    *(v17 + 3) = 0;
  }

  return v17;
}

- (void)dealloc
{
  [(NFCSession *)self _invalidate];
  v3.receiver = self;
  v3.super_class = NFCSession;
  [(NFCSession *)&v3 dealloc];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NFCSession *)self _connection];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v15 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v8 initWithDomain:v9 code:7 userInfo:v11];
    v4[2](v4, v12);

    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NFCSession *)self _connection];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nfcd"];
    v15 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v8 initWithDomain:v9 code:7 userInfo:v11];
    v4[2](v4, v12);

    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_exportedObjectClassName
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v3 = objc_opt_class();
  if (!v3)
  {
    v3 = objc_opt_class();
  }

  v4 = NSStringFromClass(v3);

  return v4;
}

- (id)_connectIfNeeded
{
  v43 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_connectionLock lock];
  connection = self->_connection;
  if (connection)
  {
    goto LABEL_4;
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_machServiceName options:4096];
  v6 = self->_connection;
  self->_connection = v5;

  v7 = self->_connection;
  if (v7)
  {
    v8 = (self->_connectionID + 1);
    self->_connectionID = v8;
    [(NSXPCConnection *)v7 setRemoteObjectInterface:self->_remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:self->_exportedObjectInterface];
    WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
    [(NSXPCConnection *)self->_connection setExportedObject:WeakRetained];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2372B27B8;
    aBlock[3] = &unk_278A29CD0;
    objc_copyWeak(v35, &location);
    v35[1] = v8;
    v35[2] = a2;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2372B29E0;
    v31[3] = &unk_278A29CF8;
    v33 = v8;
    v11 = v10;
    v32 = v11;
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v31];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2372B2B08;
    v28[3] = &unk_278A29CF8;
    v29 = v11;
    v30 = v8;
    v12 = self->_connection;
    v13 = v11;
    [(NSXPCConnection *)v12 setInterruptionHandler:v28];
    [(NSXPCConnection *)self->_connection _setQueue:self->_xpcQueue];
    [(NSXPCConnection *)self->_connection resume];

    objc_destroyWeak(v35);
    objc_destroyWeak(&location);
    connection = self->_connection;
LABEL_4:
    v14 = connection;
    goto LABEL_5;
  }

  v17 = MEMORY[0x277D82BB0];
  dispatch_get_specific(*MEMORY[0x277D82BB0]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v19 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v23 = 45;
    if (isMetaClass)
    {
      v23 = 43;
    }

    v19(3, "%c[%{public}s %{public}s]:%i Failed to connect to NFCD", v23, ClassName, Name, 111);
  }

  dispatch_get_specific(*v17);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    LODWORD(location) = 67109890;
    HIDWORD(location) = v26;
    v37 = 2082;
    v38 = object_getClassName(self);
    v39 = 2082;
    v40 = sel_getName(a2);
    v41 = 1024;
    v42 = 111;
    _os_log_impl(&dword_23728C000, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect to NFCD", &location, 0x22u);
  }

  v14 = 0;
LABEL_5:
  [(NSLock *)self->_connectionLock unlock];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_invalidate
{
  [(NSLock *)self->_connectionLock lock];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  connectionLock = self->_connectionLock;

  [(NSLock *)connectionLock unlock];
}

@end