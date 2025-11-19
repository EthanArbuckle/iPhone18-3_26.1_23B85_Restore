@interface WCContentIndex
- (BOOL)isEqual:(id)a3;
- (NSArray)index;
- (NSString)description;
- (WCContentIndex)initWithContainingFolder:(id)a3;
- (id)addContentIdentifier:(id)a3;
- (id)commit;
- (unint64_t)hash;
- (void)commit;
- (void)invalidate;
- (void)loadContentIfNecessary;
- (void)removeContentIdentifier:(id)a3;
@end

@implementation WCContentIndex

- (WCContentIndex)initWithContainingFolder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WCContentIndex;
  v5 = [(WCContentIndex *)&v11 init];
  if (v5)
  {
    v6 = [v4 URLByAppendingPathComponent:@"contents.index" isDirectory:0];
    itemURL = v5->_itemURL;
    v5->_itemURL = v6;

    v8 = objc_opt_new();
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v8;

    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:17];
    [(WCContentIndex *)v5 loadContentIfNecessary];
    [MEMORY[0x277CCA9E8] addFilePresenter:v5];
  }

  return v5;
}

- (void)invalidate
{
  [(WCContentIndex *)self setInvalidated:1];
  v3 = MEMORY[0x277CCA9E8];

  [v3 removeFilePresenter:self];
}

- (void)loadContentIfNecessary
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_0_0(a1, a2, "[WCContentIndex loadContentIfNecessary]");
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, v3, v3, "%{public}s could not read in index file with error: %{public}@", v4);
}

void __40__WCContentIndex_loadContentIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    obj = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a2 options:0 error:&obj];
    objc_storeStrong(v3, obj);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 8);
      v11 = 0;
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:1 format:0 error:&v11];
      objc_storeStrong((v7 + 40), v11);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (NSArray)index
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:self selector:sel_loadContentIfNecessary object:0];
  v4 = [(WCContentIndex *)self presentedItemOperationQueue];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 addOperations:v5 waitUntilFinished:1];

  v6 = [(WCContentIndex *)self cachedContentIndex];
  v7 = [v6 copy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCContentIndex *)self itemURL];
  v7 = [v6 path];
  v8 = [(WCContentIndex *)self cachedContentIndex];
  v9 = WCCompactStringFromCollection(v8);
  v10 = [v3 stringWithFormat:@"<%@: %p, file: %@, index: %@>", v5, self, v7, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCContentIndex *)self itemURL];
      v7 = [(WCContentIndex *)v5 itemURL];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCContentIndex *)self itemURL];
  v3 = [v2 hash];

  return v3;
}

- (id)addContentIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WCContentIndex *)self cachedContentIndex];
    [v5 addObject:v4];

    v6 = [(WCContentIndex *)self commit];
    if (v6)
    {
      v7 = [(WCContentIndex *)self cachedContentIndex];
      [v7 removeObject:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeContentIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WCContentIndex *)self cachedContentIndex];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(WCContentIndex *)self cachedContentIndex];
      [v7 removeObject:v4];

      v8 = [(WCContentIndex *)self commit];
    }

    else
    {
      v9 = wc_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WCContentIndex *)v4 removeContentIdentifier:v9, v10];
      }
    }
  }
}

- (id)commit
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(WCContentIndex *)self cachedContentIndex];
  v4 = [v3 count];

  if (v4 < 0x1B59)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v14 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:self];
    v15 = [(WCContentIndex *)self presentedItemURL];
    v17 = (v26 + 5);
    v16 = v26[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __24__WCContentIndex_commit__block_invoke;
    v23[3] = &unk_278B7C4A8;
    v23[5] = &v25;
    obj = v16;
    v23[4] = self;
    [v14 coordinateWritingItemAtURL:v15 options:8 error:&obj byAccessor:v23];
    objc_storeStrong(v17, obj);

    if (v26[5])
    {
      v18 = wc_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = v26[5];
        v19 = NSPrintF();
        [(WCContentIndex *)v19 commit];
      }
    }

    _Block_object_dispose(&v25, 8);
    v13 = 0;
  }

  else
  {
    v5 = [(WCContentIndex *)self cachedContentIndex];
    v6 = [v5 count];

    if (v6 >= 0x1B63)
    {
      v7 = [(WCContentIndex *)self cachedContentIndex];
      v8 = [v7 count];

      v9 = [(WCContentIndex *)self cachedContentIndex];
      v10 = [v9 subarrayWithRange:{v8 - 7000, 7000}];
      v11 = [v10 mutableCopy];
      [(WCContentIndex *)self setCachedContentIndex:v11];
    }

    v12 = wc_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(WCContentIndex *)self commit];
    }

    v13 = [MEMORY[0x277CCA9B8] wcErrorWithCode:7015 userInfo:0];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

void __24__WCContentIndex_commit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 40;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = MEMORY[0x277CCAC58];
    v6 = [*(a1 + 32) cachedContentIndex];
    v7 = *(*(a1 + 40) + 8);
    obj = 0;
    v8 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&obj];
    objc_storeStrong((v7 + 40), obj);

    if (v8)
    {
      v9 = *(*v4 + 8);
      v12 = *(v9 + 40);
      v10 = [v8 writeToURL:v3 options:1073741825 error:&v12];
      objc_storeStrong((v9 + 40), v12);
      if ((v10 & 1) != 0 || [*(*(*v4 + 8) + 40) code] == 4)
      {
        goto LABEL_10;
      }

      v11 = wc_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __24__WCContentIndex_commit__block_invoke_cold_1(v4, v3, v11);
      }
    }

    else
    {
      v11 = wc_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __24__WCContentIndex_commit__block_invoke_cold_2(v4, v11);
      }
    }

LABEL_10:
  }
}

- (void)removeContentIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136446466;
  v5 = "[WCContentIndex removeContentIdentifier:]";
  v6 = 2114;
  v7 = a1;
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, a3, "%{public}s identifier not in index %{public}@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)commit
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 cachedContentIndex];
  v6 = 136446466;
  v7 = "[WCContentIndex commit]";
  v8 = 2050;
  v9 = [v3 count];
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, v4, "%{public}s could not write to index file because cache size limit was reached. Cache size: %{public}ld", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __24__WCContentIndex_commit__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  v5 = NSPrintF();
  v6 = [a2 path];
  *buf = 136446722;
  v9 = "[WCContentIndex commit]_block_invoke";
  v10 = 2114;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  _os_log_error_impl(&dword_23B2FA000, a3, OS_LOG_TYPE_ERROR, "%{public}s error %{public}@ writing file to %{public}@", buf, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __24__WCContentIndex_commit__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  v3 = NSPrintF();
  v6 = 136446466;
  v7 = "[WCContentIndex commit]_block_invoke";
  v8 = 2114;
  v9 = v3;
  OUTLINED_FUNCTION_1_0(&dword_23B2FA000, a2, v4, "%{public}s could not serialize content data %{public}@", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

@end