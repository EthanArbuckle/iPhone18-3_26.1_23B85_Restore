@interface WFFileStorageServiceResult
+ (id)possibleMetadataClasses;
+ (id)resultWithMetadata:(id)a3;
+ (void)getResultWithFileURL:(id)a3 consumingBundleID:(id)a4 resultBlock:(id)a5;
- (WFFileStorageServiceResult)initWithCoder:(id)a3;
- (WFFileStorageServiceResult)initWithFileURL:(id)a3 metadataObject:(id)a4;
- (WFFileStorageServiceResult)initWithWrappedURL:(id)a3 metadataObject:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileStorageServiceResult

- (WFFileStorageServiceResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedURL"];
  v6 = [objc_opt_class() possibleMetadataClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"metadataObject"];

  v8 = [(WFFileStorageServiceResult *)self initWithWrappedURL:v5 metadataObject:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFileStorageServiceResult *)self wrappedURL];
  [v4 encodeObject:v5 forKey:@"wrappedURL"];

  v6 = [(WFFileStorageServiceResult *)self metadataObject];
  [v4 encodeObject:v6 forKey:@"metadataObject"];
}

- (void)dealloc
{
  v3 = [(WFFileStorageServiceResult *)self lifecycleManagedURL];

  if (v3)
  {
    v4 = [(WFFileStorageServiceResult *)self lifecycleManagedURL];
    [v4 stopAccessingSecurityScopedResource];
  }

  v5.receiver = self;
  v5.super_class = WFFileStorageServiceResult;
  [(WFFileStorageServiceResult *)&v5 dealloc];
}

- (WFFileStorageServiceResult)initWithFileURL:(id)a3 metadataObject:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!(v8 | v9))
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:67 description:@"Can't initialize a result with no data"];
  }

  v16.receiver = self;
  v16.super_class = WFFileStorageServiceResult;
  v10 = [(WFFileStorageServiceResult *)&v16 init];
  if (v10)
  {
    [v8 startAccessingSecurityScopedResource];
    objc_storeStrong(&v10->_lifecycleManagedURL, a3);
    v11 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v8];
    wrappedURL = v10->_wrappedURL;
    v10->_wrappedURL = v11;

    objc_storeStrong(&v10->_metadataObject, a4);
    v13 = v10;
  }

  return v10;
}

- (WFFileStorageServiceResult)initWithWrappedURL:(id)a3 metadataObject:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!(v8 | v9))
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:52 description:@"Can't initialize a result with no data"];
  }

  v16.receiver = self;
  v16.super_class = WFFileStorageServiceResult;
  v10 = [(WFFileStorageServiceResult *)&v16 init];
  v11 = v10;
  if (v10)
  {
    lifecycleManagedURL = v10->_lifecycleManagedURL;
    v10->_lifecycleManagedURL = 0;

    objc_storeStrong(&v11->_wrappedURL, a3);
    objc_storeStrong(&v11->_metadataObject, a4);
    v13 = v11;
  }

  return v11;
}

+ (id)possibleMetadataClasses
{
  v2 = +[WFStorageServiceRegistry sharedRegistry];
  v3 = [v2 storageServices];
  v4 = [v3 if_map:&__block_literal_global];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

+ (id)resultWithMetadata:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFFileStorageServiceResult.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"metadataObject"}];
  }

  v6 = [[WFFileStorageServiceResult alloc] initWithWrappedURL:0 metadataObject:v5];

  return v6;
}

+ (void)getResultWithFileURL:(id)a3 consumingBundleID:(id)a4 resultBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
LABEL_3:
      v19 = 0;
      v12 = FPIsFileProviderBookmark() != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFFileStorageServiceResult.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v14 = [[WFFileStorageServiceResult alloc] initWithFileURL:v9 metadataObject:0];
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__WFFileStorageServiceResult_getResultWithFileURL_consumingBundleID_resultBlock___block_invoke;
    v15[3] = &unk_278C1D0C0;
    v16 = v9;
    v18 = v11;
    v17 = v14;
    WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer(v16, v10, v15);
  }

  else
  {
    (*(v11 + 2))(v11, v14, 0);
  }
}

void __81__WFFileStorageServiceResult_getResultWithFileURL_consumingBundleID_resultBlock___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v9 = 136315651;
      v10 = "+[WFFileStorageServiceResult getResultWithFileURL:consumingBundleID:resultBlock:]_block_invoke";
      v11 = 2113;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_ERROR, "%s Couldn't modify filecoordinationd ACL for sandbox extending %{private}@: %{public}@", &v9, 0x20u);
    }

    v6 = *(a1[6] + 16);
  }

  else
  {
    v7 = a1[5];
    v6 = *(a1[6] + 16);
  }

  v6();

  v8 = *MEMORY[0x277D85DE8];
}

@end