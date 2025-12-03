@interface ASTConnectionPrepareDevice
- (ASTConnectionPrepareDevice)initWithIdentities:(id)identities;
@end

@implementation ASTConnectionPrepareDevice

- (ASTConnectionPrepareDevice)initWithIdentities:(id)identities
{
  v31 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  v27.receiver = self;
  v27.super_class = ASTConnectionPrepareDevice;
  v5 = [(ASTMaterializedConnection *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = identitiesCopy;
    v7 = identitiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          json = [v12 json];
          [dictionary setObject:json forKeyedSubscript:@"deviceIdentifiers"];

          [v6 addObject:dictionary];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v9);
    }

    v28[0] = @"devices";
    v28[1] = @"actions";
    v29[0] = v6;
    v29[1] = &unk_2852D5EB0;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v22 = 0;
    v16 = [ASTEncodingUtilities jsonSerializeObject:v15 error:&v22];
    v17 = v22;

    if (v16)
    {
      [(ASTMaterializedConnection *)v5 addBody:v16 gzip:+[ASTConnectionUtilities isGzipEnabled]];
    }

    else
    {
      v18 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ASTConnectionSession initWithIdentities:v17 ticket:v18 requestQueuedSuiteInfo:?];
      }
    }

    identitiesCopy = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

@end