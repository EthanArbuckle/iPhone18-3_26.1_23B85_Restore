@interface WFFileStorageServiceResult
+ (id)possibleMetadataClasses;
+ (id)resultWithMetadata:(id)metadata;
+ (void)getResultWithFileURL:(id)l consumingBundleID:(id)d resultBlock:(id)block;
- (WFFileStorageServiceResult)initWithCoder:(id)coder;
- (WFFileStorageServiceResult)initWithFileURL:(id)l metadataObject:(id)object;
- (WFFileStorageServiceResult)initWithWrappedURL:(id)l metadataObject:(id)object;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileStorageServiceResult

- (WFFileStorageServiceResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedURL"];
  possibleMetadataClasses = [objc_opt_class() possibleMetadataClasses];
  v7 = [coderCopy decodeObjectOfClasses:possibleMetadataClasses forKey:@"metadataObject"];

  v8 = [(WFFileStorageServiceResult *)self initWithWrappedURL:v5 metadataObject:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  wrappedURL = [(WFFileStorageServiceResult *)self wrappedURL];
  [coderCopy encodeObject:wrappedURL forKey:@"wrappedURL"];

  metadataObject = [(WFFileStorageServiceResult *)self metadataObject];
  [coderCopy encodeObject:metadataObject forKey:@"metadataObject"];
}

- (void)dealloc
{
  lifecycleManagedURL = [(WFFileStorageServiceResult *)self lifecycleManagedURL];

  if (lifecycleManagedURL)
  {
    lifecycleManagedURL2 = [(WFFileStorageServiceResult *)self lifecycleManagedURL];
    [lifecycleManagedURL2 stopAccessingSecurityScopedResource];
  }

  v5.receiver = self;
  v5.super_class = WFFileStorageServiceResult;
  [(WFFileStorageServiceResult *)&v5 dealloc];
}

- (WFFileStorageServiceResult)initWithFileURL:(id)l metadataObject:(id)object
{
  lCopy = l;
  objectCopy = object;
  if (!(lCopy | objectCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:67 description:@"Can't initialize a result with no data"];
  }

  v16.receiver = self;
  v16.super_class = WFFileStorageServiceResult;
  v10 = [(WFFileStorageServiceResult *)&v16 init];
  if (v10)
  {
    [lCopy startAccessingSecurityScopedResource];
    objc_storeStrong(&v10->_lifecycleManagedURL, l);
    v11 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:lCopy];
    wrappedURL = v10->_wrappedURL;
    v10->_wrappedURL = v11;

    objc_storeStrong(&v10->_metadataObject, object);
    v13 = v10;
  }

  return v10;
}

- (WFFileStorageServiceResult)initWithWrappedURL:(id)l metadataObject:(id)object
{
  lCopy = l;
  objectCopy = object;
  if (!(lCopy | objectCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:52 description:@"Can't initialize a result with no data"];
  }

  v16.receiver = self;
  v16.super_class = WFFileStorageServiceResult;
  v10 = [(WFFileStorageServiceResult *)&v16 init];
  v11 = v10;
  if (v10)
  {
    lifecycleManagedURL = v10->_lifecycleManagedURL;
    v10->_lifecycleManagedURL = 0;

    objc_storeStrong(&v11->_wrappedURL, l);
    objc_storeStrong(&v11->_metadataObject, object);
    v13 = v11;
  }

  return v11;
}

+ (id)possibleMetadataClasses
{
  v2 = +[WFStorageServiceRegistry sharedRegistry];
  storageServices = [v2 storageServices];
  v4 = [storageServices if_map:&__block_literal_global];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

+ (id)resultWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"metadataObject"}];
  }

  v6 = [[WFFileStorageServiceResult alloc] initWithWrappedURL:0 metadataObject:metadataCopy];

  return v6;
}

+ (void)getResultWithFileURL:(id)l consumingBundleID:(id)d resultBlock:(id)block
{
  lCopy = l;
  dCopy = d;
  blockCopy = block;
  if (lCopy)
  {
    if (dCopy)
    {
LABEL_3:
      v19 = 0;
      v12 = FPIsFileProviderBookmark() != 0;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileStorageServiceResult.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];

    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v14 = [[WFFileStorageServiceResult alloc] initWithFileURL:lCopy metadataObject:0];
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__WFFileStorageServiceResult_getResultWithFileURL_consumingBundleID_resultBlock___block_invoke;
    v15[3] = &unk_278C1D0C0;
    v16 = lCopy;
    v18 = blockCopy;
    v17 = v14;
    WFFileStorageServiceResultAllowFPSandboxExtensionToConsumer(v16, dCopy, v15);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, v14, 0);
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