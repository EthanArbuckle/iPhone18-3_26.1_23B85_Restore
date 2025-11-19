@interface ASTUploadClientFactory
+ (id)repairToolUploadClientWithASTSession:(id)a3 withUploadRequests:(id)a4 andDelegate:(id)a5;
+ (id)repairToolUploadClientWithUploadRequests:(id)a3 andDelegate:(id)a4;
+ (id)uploadClientWithASTSession:(id)a3 andFileMap:(id)a4 andUrlFactory:(id)a5 andDelegate:(id)a6;
@end

@implementation ASTUploadClientFactory

+ (id)uploadClientWithASTSession:(id)a3 andFileMap:(id)a4 andUrlFactory:(id)a5 andDelegate:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v23 = v11;
  v13 = [[ASTConfigurableUploadClient alloc] initWithASTSession:v9 withURLSession:0 withURLRequestFactory:v11 withDelegate:v12];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v10;
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

+ (id)repairToolUploadClientWithASTSession:(id)a3 withUploadRequests:(id)a4 andDelegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RepairToolURLFactory alloc] initWithRequestItems:v8];

  v11 = [[ASTConfigurableUploadClient alloc] initWithASTSession:v9 withURLSession:0 withURLRequestFactory:v10 withDelegate:v7];

  return v11;
}

+ (id)repairToolUploadClientWithUploadRequests:(id)a3 andDelegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RepairToolURLFactory alloc] initWithRequestItems:v6];

  v8 = [[ASTConfigurableUploadClient alloc] initWithURLSession:0 withURLRequestFactory:v7 withDelegate:v5];

  return v8;
}

@end