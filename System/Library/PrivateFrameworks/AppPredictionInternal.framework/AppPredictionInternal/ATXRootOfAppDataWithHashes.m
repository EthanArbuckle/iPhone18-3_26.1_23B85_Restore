@interface ATXRootOfAppDataWithHashes
- (ATXRootOfAppDataWithHashes)init;
- (ATXRootOfAppDataWithHashes)initWithSerialized:(id)a3;
- (id)description;
- (id)serialize;
- (unint64_t)sessionCountForBundleId:(id)a3;
- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4;
- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4;
- (void)serialize;
@end

@implementation ATXRootOfAppDataWithHashes

- (ATXRootOfAppDataWithHashes)init
{
  v6.receiver = self;
  v6.super_class = ATXRootOfAppDataWithHashes;
  v2 = [(ATXRootOfAppData *)&v6 initInternal];
  if (v2)
  {
    v3 = objc_opt_new();
    dataForBundleId = v2->_dataForBundleId;
    v2->_dataForBundleId = v3;
  }

  return v2;
}

- (ATXRootOfAppDataWithHashes)initWithSerialized:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ATXRootOfAppDataWithHashes;
  v5 = [(ATXRootOfAppData *)&v14 initInternal];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  v13 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:2 format:0 error:&v13];
  v8 = v13;
  objc_autoreleasePoolPop(v6);
  v9 = v5[1];
  v5[1] = v7;

  if (v5[1])
  {

LABEL_4:
    v10 = v5;
    goto LABEL_8;
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(ATXRootOfAppDataWithHashes *)v8 initWithSerialized:v11];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (unint64_t)sessionCountForBundleId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *[v3 bytes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:a3];
  v8 = v7;
  if (v7 && (v9 = [v7 mutableBytes], __key[0] = hash32(v6), __key[1] = 0, (v10 = bsearch(__key, (v9 + 4), (objc_msgSend(v8, "length") - 4) >> 3, 8uLL, compareEntries)) != 0))
  {
    v11 = v10[1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4
{
  v6 = a3;
  v7 = hash32(a4);
  v8 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mutableBytes];
    ++*v10;
    __key[0] = v7;
    __key[1] = 1;
    v11 = bsearch(__key, v10 + 1, ([v9 length] - 4) >> 3, 8uLL, compareEntries);
    if (v11)
    {
      ++v11[1];
    }

    else
    {
      [v9 appendBytes:__key length:8];
      v13 = v9;
      v14 = v9;
      v15 = [v14 mutableBytes];
      v16 = [v14 length];

      qsort((v15 + 4), (v16 - 4) >> 3, 8uLL, compareEntries);
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:12];
    [(NSMutableDictionary *)self->_dataForBundleId setObject:v9 forKeyedSubscript:v6];
    v12 = [v9 mutableBytes];
    *v12 = 1;
    v12[1] = v7;
    v12[2] = 1;
  }
}

- (id)description
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@", v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_dataForBundleId;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:v11];
        v13 = [v12 bytes];
        [v6 appendFormat:@"\n  %@ (%u): ", v11, *v13];
        v14 = [v12 length];
        if ((v14 - 4) >= 8)
        {
          v15 = (v14 - 4) >> 3;
          v16 = v13 + 2;
          do
          {
            [v6 appendFormat:@"%x(%u) ", *(v16 - 1), *v16];
            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }

      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [v6 appendString:@"\n>"];
  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)serialize
{
  dataForBundleId = self->_dataForBundleId;
  v7 = 0;
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:dataForBundleId format:200 options:0 error:&v7];
  if (!v5)
  {
    [(ATXRootOfAppDataWithHashes *)&v7 serialize];
  }

  return v5;
}

- (void)initWithSerialized:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load root of app data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serialize
{
  v5 = MEMORY[0x277CCA890];
  v6 = *a1;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:a3 file:@"ATXRootOfAppData.m" lineNumber:221 description:{@"Archiver error: %@", v6}];
}

@end