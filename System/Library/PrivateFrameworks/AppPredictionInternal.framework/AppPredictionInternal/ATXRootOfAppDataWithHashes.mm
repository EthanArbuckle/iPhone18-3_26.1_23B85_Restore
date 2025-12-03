@interface ATXRootOfAppDataWithHashes
- (ATXRootOfAppDataWithHashes)init;
- (ATXRootOfAppDataWithHashes)initWithSerialized:(id)serialized;
- (id)description;
- (id)serialize;
- (unint64_t)sessionCountForBundleId:(id)id;
- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action;
- (void)recordSessionWithBundleId:(id)id firstAction:(id)action;
- (void)serialize;
@end

@implementation ATXRootOfAppDataWithHashes

- (ATXRootOfAppDataWithHashes)init
{
  v6.receiver = self;
  v6.super_class = ATXRootOfAppDataWithHashes;
  initInternal = [(ATXRootOfAppData *)&v6 initInternal];
  if (initInternal)
  {
    v3 = objc_opt_new();
    dataForBundleId = initInternal->_dataForBundleId;
    initInternal->_dataForBundleId = v3;
  }

  return initInternal;
}

- (ATXRootOfAppDataWithHashes)initWithSerialized:(id)serialized
{
  serializedCopy = serialized;
  v14.receiver = self;
  v14.super_class = ATXRootOfAppDataWithHashes;
  initInternal = [(ATXRootOfAppData *)&v14 initInternal];
  if (!initInternal)
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  v13 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:serializedCopy options:2 format:0 error:&v13];
  v8 = v13;
  objc_autoreleasePoolPop(v6);
  v9 = initInternal[1];
  initInternal[1] = v7;

  if (initInternal[1])
  {

LABEL_4:
    v10 = initInternal;
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

- (unint64_t)sessionCountForBundleId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:id];
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

- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action
{
  actionCopy = action;
  v7 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:id];
  v8 = v7;
  if (v7 && (v9 = [v7 mutableBytes], __key[0] = hash32(actionCopy), __key[1] = 0, (v10 = bsearch(__key, (v9 + 4), (objc_msgSend(v8, "length") - 4) >> 3, 8uLL, compareEntries)) != 0))
  {
    v11 = v10[1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)recordSessionWithBundleId:(id)id firstAction:(id)action
{
  idCopy = id;
  v7 = hash32(action);
  v8 = [(NSMutableDictionary *)self->_dataForBundleId objectForKeyedSubscript:idCopy];
  if (v8)
  {
    v9 = v8;
    mutableBytes = [v8 mutableBytes];
    ++*mutableBytes;
    __key[0] = v7;
    __key[1] = 1;
    v11 = bsearch(__key, mutableBytes + 1, ([v9 length] - 4) >> 3, 8uLL, compareEntries);
    if (v11)
    {
      ++v11[1];
    }

    else
    {
      [v9 appendBytes:__key length:8];
      v13 = v9;
      v14 = v9;
      mutableBytes2 = [v14 mutableBytes];
      v16 = [v14 length];

      qsort((mutableBytes2 + 4), (v16 - 4) >> 3, 8uLL, compareEntries);
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:12];
    [(NSMutableDictionary *)self->_dataForBundleId setObject:v9 forKeyedSubscript:idCopy];
    mutableBytes3 = [v9 mutableBytes];
    *mutableBytes3 = 1;
    mutableBytes3[1] = v7;
    mutableBytes3[2] = 1;
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
        bytes = [v12 bytes];
        [v6 appendFormat:@"\n  %@ (%u): ", v11, *bytes];
        v14 = [v12 length];
        if ((v14 - 4) >= 8)
        {
          v15 = (v14 - 4) >> 3;
          v16 = bytes + 2;
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
  v6 = *self;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:a3 file:@"ATXRootOfAppData.m" lineNumber:221 description:{@"Archiver error: %@", v6}];
}

@end