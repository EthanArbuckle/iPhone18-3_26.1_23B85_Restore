@interface ASTConnectionSession
- (ASTConnectionSession)initWithIdentities:(id)a3 ticket:(id)a4 requestQueuedSuiteInfo:(BOOL)a5;
- (void)_addTokenToHeaderField;
@end

@implementation ASTConnectionSession

- (ASTConnectionSession)initWithIdentities:(id)a3 ticket:(id)a4 requestQueuedSuiteInfo:(BOOL)a5
{
  v5 = a5;
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = ASTConnectionSession;
  v10 = [(ASTMaterializedConnection *)&v31 init];
  v11 = v10;
  if (v10)
  {
    v27 = v10;
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v8 count])
    {
      v12 = 0;
      do
      {
        v13 = [MEMORY[0x277CBEB38] dictionary];
        v14 = [v8 objectAtIndexedSubscript:v12];
        v15 = [v14 json];
        [v13 setObject:v15 forKeyedSubscript:@"deviceIdentifiers"];

        v16 = [MEMORY[0x277CCABB0] numberWithInt:++v12];
        [v13 setObject:v16 forKeyedSubscript:@"deviceIndex"];

        v17 = MEMORY[0x277CCABB0];
        v18 = +[ASTEnvironment currentEnvironment];
        v19 = [v17 numberWithBool:{objc_msgSend(v18, "isDiagnosticsMode")}];
        [v13 setObject:v19 forKeyedSubscript:@"isDiagnosticMode"];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:{+[ASTEnvironment isServicePart](ASTEnvironment, "isServicePart")}];
        [v13 setObject:v20 forKeyedSubscript:@"isServicePart"];

        if (v9 && ([v9 isEqualToString:@"IN_CURRENT_SESSION"] & 1) == 0)
        {
          [v13 setObject:v9 forKeyedSubscript:@"ticketNumber"];
        }

        if (v5)
        {
          [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"queuedSuiteInfo"];
        }

        [v29 addObject:v13];
      }

      while ([v8 count] > v12);
    }

    v32 = @"devices";
    v33[0] = v29;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:{1, v27}];
    v30 = 0;
    v22 = [ASTEncodingUtilities jsonSerializeObject:v21 error:&v30];
    v23 = v30;

    if (v22)
    {
      v11 = v28;
      [(ASTMaterializedConnection *)v28 addBody:v22 gzip:+[ASTConnectionUtilities isGzipEnabled]];
    }

    else
    {
      v24 = ASTLogHandleForCategory(0);
      v11 = v28;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ASTConnectionSession initWithIdentities:v23 ticket:v24 requestQueuedSuiteInfo:?];
      }
    }

    [(ASTConnectionSession *)v11 _addTokenToHeaderField];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_addTokenToHeaderField
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    v3 = [MEMORY[0x277CF97E8] proxyServer];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 server];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 port];
        if (v7)
        {
          v8 = v7;
          v9 = [v4 token];

          if (v9)
          {
            v10 = ASTLogHandleForCategory(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [v4 token];
              v15 = 138412290;
              v16 = v11;
              _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "Set token for session's header: %@", &v15, 0xCu);
            }

            v12 = [(ASTMaterializedConnection *)self request];
            v13 = [v4 token];
            [v12 setValue:v13 forHTTPHeaderField:@"Token"];
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentities:(uint64_t)a1 ticket:(NSObject *)a2 requestQueuedSuiteInfo:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "JSON serialization failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end