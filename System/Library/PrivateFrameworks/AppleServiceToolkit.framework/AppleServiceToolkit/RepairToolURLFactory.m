@interface RepairToolURLFactory
- (RepairToolURLFactory)initWithRequestItems:(id)a3;
- (id)urlRequest;
@end

@implementation RepairToolURLFactory

- (RepairToolURLFactory)initWithRequestItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RepairToolURLFactory;
  v6 = [(RepairToolURLFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestItems, a3);
    v7->_currentIndex = 0;
  }

  return v7;
}

- (id)urlRequest
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(RepairToolURLFactory *)self requestItems];
  v4 = [v3 count];
  v5 = [(RepairToolURLFactory *)self currentIndex];

  if (v4 >= v5)
  {
    v7 = [(RepairToolURLFactory *)self requestItems];
    v8 = [v7 objectAtIndexedSubscript:{-[RepairToolURLFactory currentIndex](self, "currentIndex")}];

    v9 = MEMORY[0x277CBEBC0];
    v10 = [v8 destination];
    v11 = [v9 URLWithString:v10];

    v24 = v11;
    v6 = [MEMORY[0x277CCAB70] requestWithURL:v11];
    [v6 setHTTPMethod:@"POST"];
    v12 = [v8 token];
    [v6 setValue:v12 forHTTPHeaderField:@"X-Apple-File-Upload-Token"];

    v13 = [v8 encryptionKey];
    [v6 setValue:v13 forHTTPHeaderField:@"X-Apple-Encrypted-key"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v8 extraHeaders];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [v8 extraHeaders];
          v21 = [v20 objectForKeyedSubscript:v19];
          [v6 setValue:v21 forHTTPHeaderField:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    [(RepairToolURLFactory *)self setCurrentIndex:[(RepairToolURLFactory *)self currentIndex]+ 1];
  }

  else
  {
    v6 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

@end