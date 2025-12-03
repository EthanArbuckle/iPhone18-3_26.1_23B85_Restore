@interface OSLogCurrentProcessEnumerator
- (OSLogCurrentProcessEnumerator)initWithOptions:(unint64_t)options predicate:(id)predicate position:(id)position;
- (id)nextObject;
- (void)dealloc;
@end

@implementation OSLogCurrentProcessEnumerator

- (id)nextObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_39];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__OSLogCurrentProcessEnumerator_nextObject__block_invoke_40;
  v5[3] = &unk_278B46390;
  v5[4] = &v6;
  [v2 getNextOSLogEntryWithReply:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__OSLogCurrentProcessEnumerator_nextObject__block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&dword_23A002000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  v3.receiver = self;
  v3.super_class = OSLogCurrentProcessEnumerator;
  [(OSLogCurrentProcessEnumerator *)&v3 dealloc];
}

- (OSLogCurrentProcessEnumerator)initWithOptions:(unint64_t)options predicate:(id)predicate position:(id)position
{
  predicateCopy = predicate;
  positionCopy = position;
  v23.receiver = self;
  v23.super_class = OSLogCurrentProcessEnumerator;
  v9 = [(OSLogCurrentProcessEnumerator *)&v23 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.OSLogService"];
    connectionToService = v9->_connectionToService;
    v9->_connectionToService = v10;

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D2B730];
    [(NSXPCConnection *)v9->_connectionToService setRemoteObjectInterface:v12];

    [(NSXPCConnection *)v9->_connectionToService resume];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v13 = [(NSXPCConnection *)v9->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_443];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__OSLogCurrentProcessEnumerator_initWithOptions_predicate_position___block_invoke_37;
    v16[3] = &unk_278B46368;
    v16[4] = &v17;
    [v13 setUpWithPredicate:predicateCopy reply:v16];

    if (v18[5])
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __68__OSLogCurrentProcessEnumerator_initWithOptions_predicate_position___block_invoke_37(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_23A002000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caught error: %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __68__OSLogCurrentProcessEnumerator_initWithOptions_predicate_position___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&dword_23A002000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end