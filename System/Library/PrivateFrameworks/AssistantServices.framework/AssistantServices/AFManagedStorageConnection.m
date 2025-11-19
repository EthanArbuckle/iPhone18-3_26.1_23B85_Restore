@interface AFManagedStorageConnection
- (id)_connection;
- (id)_managedStoreService;
- (id)_managedStoreServiceWithErrorHandler:(id)a3;
- (id)_synchronousManagedStoreServiceWithErrorHandler:(id)a3;
- (id)dataForKey:(id)a3 inKnowledgeStoreWithName:(id)a4;
- (id)domainObjectForKey:(id)a3;
- (void)_clearConnection;
- (void)dealloc;
- (void)resetKnowledgeStoreWithName:(id)a3;
- (void)setData:(id)a3 forKey:(id)a4 inKnowledgeStoreWithName:(id)a5;
- (void)setDomainObject:(id)a3 forKey:(id)a4;
@end

@implementation AFManagedStorageConnection

- (void)resetKnowledgeStoreWithName:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFManagedStorageConnection resetKnowledgeStoreWithName:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  v6 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_68_19768];
  [v6 resetKnowledgeStoreWithName:v4 completion:&__block_literal_global_71];

  v7 = *MEMORY[0x1E69E9840];
}

void __58__AFManagedStorageConnection_resetKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFManagedStorageConnection resetKnowledgeStoreWithName:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setData:(id)a3 forKey:(id)a4 inKnowledgeStoreWithName:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[AFManagedStorageConnection setData:forKey:inKnowledgeStoreWithName:]";
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %@", &v14, 0x16u);
  }

  v12 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_63];
  [v12 setKnowledgeStoreData:v8 forKey:v9 inStoreWithName:v10 completion:&__block_literal_global_66_19772];

  v13 = *MEMORY[0x1E69E9840];
}

void __70__AFManagedStorageConnection_setData_forKey_inKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFManagedStorageConnection setData:forKey:inKnowledgeStoreWithName:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)dataForKey:(id)a3 inKnowledgeStoreWithName:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[AFManagedStorageConnection dataForKey:inKnowledgeStoreWithName:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__19776;
  v16 = __Block_byref_object_dispose__19777;
  v17 = 0;
  v9 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:&__block_literal_global_19778];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__AFManagedStorageConnection_dataForKey_inKnowledgeStoreWithName___block_invoke_60;
  v13[3] = &unk_1E7344EE0;
  v13[4] = buf;
  [v9 getKnowledgeStoreDataForKey:v6 inStoreWithName:v7 completion:v13];

  v10 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __66__AFManagedStorageConnection_dataForKey_inKnowledgeStoreWithName___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFManagedStorageConnection dataForKey:inKnowledgeStoreWithName:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setDomainObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFManagedStorageConnection *)self _managedStoreService];
  [v8 setManagedStoreObject:v7 forKey:v6];
}

- (id)domainObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19776;
  v16 = __Block_byref_object_dispose__19777;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__AFManagedStorageConnection_domainObjectForKey___block_invoke;
  v10[3] = &unk_1E73493C0;
  v5 = v4;
  v11 = v5;
  v6 = [(AFManagedStorageConnection *)self _synchronousManagedStoreServiceWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__AFManagedStorageConnection_domainObjectForKey___block_invoke_58;
  v9[3] = &unk_1E7344EB8;
  v9[4] = &v12;
  [v6 fetchManagedStoreObjectForKey:v5 reply:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__AFManagedStorageConnection_domainObjectForKey___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFManagedStorageConnection domainObjectForKey:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Could not get domain objects for %@: %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_synchronousManagedStoreServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFManagedStorageConnection *)self _connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_managedStoreServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFManagedStorageConnection *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_managedStoreService
{
  v2 = [(AFManagedStorageConnection *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistantd.managedstorage" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    objc_initWeak(&location, self);
    v6 = self->_connection;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __41__AFManagedStorageConnection__connection__block_invoke;
    v13 = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v10];
    v7 = self->_connection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F05BEE40, v10, v11, v12, v13}];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __41__AFManagedStorageConnection__connection__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AFManagedStorageConnection__connection__block_invoke_2;
  block[3] = &unk_1E7348A80;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __41__AFManagedStorageConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  connection = self->_connection;
  if (connection)
  {
    v4 = connection;
    v5 = self->_connection;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AFManagedStorageConnection__clearConnection__block_invoke;
    v8[3] = &unk_1E73497C8;
    v9 = v4;
    v6 = v4;
    [(NSXPCConnection *)v5 addBarrierBlock:v8];
    v7 = self->_connection;
    self->_connection = 0;
  }
}

- (void)dealloc
{
  [(AFManagedStorageConnection *)self _clearConnection];
  v3.receiver = self;
  v3.super_class = AFManagedStorageConnection;
  [(AFManagedStorageConnection *)&v3 dealloc];
}

@end