@interface BCMessageData
- (BCMessageData)initWithUrl:(id)a3 data:(id)a4;
- (NSArray)imagesArray;
- (NSDictionary)combinedDictionary;
- (void)decodeData:(void *)a3 dictionaryKey:;
@end

@implementation BCMessageData

- (BCMessageData)initWithUrl:(id)a3 data:(id)a4
{
  v5 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = LogCategory_Daemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 description];
    v11 = [v8 description];
    *buf = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_236EA0000, v9, OS_LOG_TYPE_DEFAULT, "BCMessageData: initWithUrl: %@ data: %@", buf, 0x16u);
  }

  v34.receiver = self;
  v34.super_class = BCMessageData;
  v12 = [(BCMessageData *)&v34 init];
  if (v12)
  {
    if (v7)
    {
      v26 = v8;
      v27 = v5;
      v28 = a4;
      v29 = v7;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v7 resolvingAgainstBaseURL:0];
      v13 = [v25 queryItems];
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = [v18 value];
            v20 = [(NSString *)v19 normalizedBase64Encoded];
            v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v20 options:0];
            v22 = [v18 name];
            [(BCMessageData *)v12 decodeData:v21 dictionaryKey:v22];
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v15);
      }

      a4 = v28;
      v7 = v29;
      v8 = v26;
      v5 = v27;
    }

    if (v8)
    {
      [(BCMessageData *)v12 decodeData:v8 dictionaryKey:@"data"];
    }

    objc_storeStrong(&v12->_url, v5);
    objc_storeStrong(&v12->_data, a4);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)decodeData:(void *)a3 dictionaryKey:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_236EA0000, v7, OS_LOG_TYPE_DEFAULT, "BCMessageData: decodeDataKey %@ %@", buf, 0x16u);
  }

  v15 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:4 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_236EA0000, v10, OS_LOG_TYPE_ERROR, "BCMessageData: error serializing JSON for key %@, error: %@", buf, 0x16u);
    }
  }

  else if ([v6 isEqualToString:@"replyMessage"])
  {
    v11 = v8;
    v10 = a1[4];
    a1[4] = v11;
  }

  else if ([v6 isEqualToString:@"receivedMessage"])
  {
    v12 = v8;
    v10 = a1[5];
    a1[5] = v12;
  }

  else if ([v6 isEqualToString:@"data"])
  {
    v13 = v8;
    v10 = a1[3];
    a1[3] = v13;
  }

  else
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_236EA0000, v10, OS_LOG_TYPE_DEFAULT, "BCMessageData: unrecognized key in the url %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)combinedDictionary
{
  v3 = [(BCMessageData *)self jsonDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(BCMessageData *)self replyMessageDictionary];

  if (v5)
  {
    v6 = [(BCMessageData *)self replyMessageDictionary];
    [v4 setObject:v6 forKeyedSubscript:@"replyMessage"];
  }

  v7 = [(BCMessageData *)self receivedMessageDictionary];

  if (v7)
  {
    v8 = [(BCMessageData *)self receivedMessageDictionary];
    [v4 setObject:v8 forKeyedSubscript:@"receivedMessage"];
  }

  return v4;
}

- (NSArray)imagesArray
{
  v2 = [(BCMessageData *)self jsonDictionary];
  v3 = [v2 objectForKeyedSubscript:@"images"];

  return v3;
}

@end