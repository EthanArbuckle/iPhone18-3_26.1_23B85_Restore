@interface ASTUploadClientFactory
+ (id)repairToolUploadClientWithASTSession:(id)session withUploadRequests:(id)requests andDelegate:(id)delegate;
+ (id)repairToolUploadClientWithUploadRequests:(id)requests andDelegate:(id)delegate;
+ (id)uploadClientWithASTSession:(id)session andFileMap:(id)map andUrlFactory:(id)factory andDelegate:(id)delegate;
@end

@implementation ASTUploadClientFactory

+ (id)uploadClientWithASTSession:(id)session andFileMap:(id)map andUrlFactory:(id)factory andDelegate:(id)delegate
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  mapCopy = map;
  factoryCopy = factory;
  delegateCopy = delegate;
  v23 = factoryCopy;
  v13 = [[ASTConfigurableUploadClient alloc] initWithASTSession:sessionCopy withURLSession:0 withURLRequestFactory:factoryCopy withDelegate:delegateCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = mapCopy;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    v18 = MEMORY[0x277CBEC10];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ASTConfigurableUploadClient *)v13 queueUploadWithSourceUrl:v20 andExtra:v18];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ASTConfigurableUploadClient *)v13 queueUploadWithSourceData:v20 andExtra:v18];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)repairToolUploadClientWithASTSession:(id)session withUploadRequests:(id)requests andDelegate:(id)delegate
{
  delegateCopy = delegate;
  requestsCopy = requests;
  sessionCopy = session;
  v10 = [[RepairToolURLFactory alloc] initWithRequestItems:requestsCopy];

  v11 = [[ASTConfigurableUploadClient alloc] initWithASTSession:sessionCopy withURLSession:0 withURLRequestFactory:v10 withDelegate:delegateCopy];

  return v11;
}

+ (id)repairToolUploadClientWithUploadRequests:(id)requests andDelegate:(id)delegate
{
  delegateCopy = delegate;
  requestsCopy = requests;
  v7 = [[RepairToolURLFactory alloc] initWithRequestItems:requestsCopy];

  v8 = [[ASTConfigurableUploadClient alloc] initWithURLSession:0 withURLRequestFactory:v7 withDelegate:delegateCopy];

  return v8;
}

@end