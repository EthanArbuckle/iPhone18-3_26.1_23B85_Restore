@interface BCImageStore
- (BCImageStore)initWithArray:(id)a3;
- (BCImageStore)initWithData:(id)a3;
- (BCImageStore)initWithImages:(id)a3;
- (id)generateImageDictionaryFromArray:(void *)a1;
@end

@implementation BCImageStore

- (BCImageStore)initWithData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 description];
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithData %@", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = BCImageStore;
  v8 = [(BCImageStore *)&v17 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
    v10 = [v9 objectForKeyedSubscript:@"images"];
    [(BCImageStore *)v8 setRawArray:v10];
    v11 = [BCImageStore generateImageDictionaryFromArray:v10];
    [(BCImageStore *)v8 setDictionary:v11];

    objc_storeStrong(&v8->_data, a3);
  }

  v12 = [(BCImageStore *)v8 dictionary];
  if (v12)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)generateImageDictionaryFromArray:(void *)a1
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v28 = v1;
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v1;
    v3 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = @"data";
      v6 = @"identifier";
      v7 = *v34;
      do
      {
        v8 = 0;
        v30 = v4;
        do
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * v8);
          v10 = [v9 objectForKeyedSubscript:{v5, v28}];
          v11 = [v9 objectForKeyedSubscript:v6];
          if (v11)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v13 = LogCategory_Daemon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_236EA0000, v13, OS_LOG_TYPE_ERROR, "BCImageStore: image is missing data or identifier", buf, 2u);
            }
          }

          else
          {
            v14 = v6;
            v15 = v5;
            v16 = objc_alloc(MEMORY[0x277CBEA90]);
            v17 = v10;
            v18 = [v17 length];
            if ((v18 & 0xFFFFFFFFFFFFFFFCLL) == 0xFFFFFFFFFFFFFFFCLL)
            {
              v19 = v17;
            }

            else
            {
              v19 = [v17 stringByPaddingToLength:(v18 & 0xFFFFFFFFFFFFFFFCLL) + 4 withString:@"=" startingAtIndex:0];
            }

            v20 = v19;

            v13 = [v16 initWithBase64EncodedString:v20 options:0];
            if (v13)
            {
              v21 = [BCImage alloc];
              v22 = [v9 objectForKeyedSubscript:@"description"];
              v23 = [(BCImage *)v21 initWithImageData:v13 identifier:v11 description:v22];

              [v29 setObject:v23 forKeyedSubscript:v11];
            }

            else
            {
              v23 = LogCategory_Daemon();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_236EA0000, v23, OS_LOG_TYPE_ERROR, "BCImageStore: image data cannot be decoded", buf, 2u);
              }
            }

            v5 = v15;

            v6 = v14;
            v4 = v30;
          }

          ++v8;
        }

        while (v4 != v8);
        v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v4);
    }

    v24 = [v29 allKeys];
    if ([v24 count])
    {
      v25 = v29;
    }

    else
    {
      v25 = 0;
    }

    v2 = v25;

    v1 = v28;
  }

  else
  {
    v2 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BCImageStore)initWithArray:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithArray %@", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = BCImageStore;
  v6 = [(BCImageStore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    [(BCImageStore *)v6 setRawArray:v4];
    v8 = [BCImageStore generateImageDictionaryFromArray:v4];
    [(BCImageStore *)v7 setDictionary:v8];

    data = v7->_data;
    v7->_data = 0;
  }

  v10 = [(BCImageStore *)v7 dictionary];
  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BCImageStore)initWithImages:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithImages %@", buf, 0xCu);
  }

  v22.receiver = self;
  v22.super_class = BCImageStore;
  v6 = [(BCImageStore *)&v22 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 identifier];
          [v7 setObject:v13 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    [(BCImageStore *)v6 setDictionary:v7];
    [(BCImageStore *)v6 setRawArray:0];
    data = v6->_data;
    v6->_data = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

@end