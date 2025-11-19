@interface DAAssetUploader
- (DAAssetUploader)init;
- (void)ASTUploadClientDidCompleteFileUpload:(id)a3;
- (void)uploadAssets:(id)a3 wtihDeviceIdentity:(id)a4 completion:(id)a5;
@end

@implementation DAAssetUploader

- (DAAssetUploader)init
{
  v6.receiver = self;
  v6.super_class = DAAssetUploader;
  v2 = [(DAAssetUploader *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    completionMap = v2->_completionMap;
    v2->_completionMap = v3;
  }

  return v2;
}

- (void)uploadAssets:(id)a3 wtihDeviceIdentity:(id)a4 completion:(id)a5
{
  v7 = a3;
  v58 = a4;
  v51 = a5;
  v8 = [v7 items];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = +[NSArray array];
    v11 = [NSError errorWithDomain:DKErrorDomain code:0 userInfo:0];
    v51[2](v51, v10, v11);
  }

  v57 = +[NSMutableArray array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v50 = v7;
  obj = [v7 items];
  v12 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v65;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v64 + 1) + 8 * i);
        v17 = [v16 extra];
        v18 = [v17 objectForKeyedSubscript:@"name"];

        v19 = [v16 extra];
        v20 = [v19 objectForKeyedSubscript:@"encryptionKey"];

        v21 = [v16 extra];
        v22 = [v21 objectForKeyedSubscript:@"token"];

        v23 = [v16 extra];
        v24 = [v23 objectForKeyedSubscript:@"extraHeaders"];
        v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

        v26 = [RepairToolRequestItem alloc];
        v27 = [@"https://genevaut-traffic.corp.apple.com/GenevaTrafficServer/PutAsset/171170.dev.asset.cosmeticInspection/" stringByAppendingString:v18];
        v28 = [v26 initWithDestination:v27 andEncryptionKey:v20 andToken:v22 andExtraHeaders:v25];
        [v57 addObject:v28];
      }

      v13 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v13);
  }

  v29 = [ASTUploadClientFactory repairToolUploadClientWithUploadRequests:v57 andDelegate:self];
  v30 = [(DAAssetUploader *)self completionMap];
  v31 = objc_retainBlock(v51);
  obja = v29;
  [v30 setObject:v31 forKey:v29];

  v32 = +[NSMutableDictionary dictionary];
  v33 = v58;
  if (v58)
  {
    v34 = [v58 deviceIdentityCert];
    v35 = [v58 deviceIdentityPublicKeyDigest];
    v36 = [v34 base64EncodedStringWithOptions:0];
    [v32 setObject:v36 forKeyedSubscript:@"certString"];

    v37 = [v35 base64EncodedStringWithOptions:0];
    [v32 setObject:v37 forKeyedSubscript:@"pubKeyDigest"];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = [v50 items];
  v38 = [v52 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v38)
  {
    v39 = v38;
    v54 = *v61;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v41 = *(*(&v60 + 1) + 8 * j);
        v42 = [v41 extra];
        v43 = [v42 objectForKeyedSubscript:@"name"];

        v44 = +[NSMutableDictionary dictionary];
        [v44 setObject:v43 forKeyedSubscript:@"name"];
        if (v33)
        {
          v45 = [v41 data];
          v59 = 0;
          v46 = [v58 signPayload:v45 error:&v59];

          [v44 setObject:v32 forKeyedSubscript:@"cert"];
          v47 = [v32 objectForKeyedSubscript:@"pubKeyDigest"];
          [v44 setObject:v47 forKeyedSubscript:@"pubKeyDigest"];

          v48 = [v46 base64EncodedStringWithOptions:0];
          [v44 setObject:v48 forKeyedSubscript:@"sig"];

          v33 = v58;
        }

        v49 = [v41 data];
        [obja queueUploadWithSourceData:v49 andExtra:v44];
      }

      v39 = [v52 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v39);
  }
}

- (void)ASTUploadClientDidCompleteFileUpload:(id)a3
{
  v8 = a3;
  v4 = [(DAAssetUploader *)self completionMap];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [(DAAssetUploader *)self completionMap];
    [v6 removeObjectForKey:v8];

    v7 = [v8 uploadStatus];
    (v5)[2](v5, v7, 0);
  }
}

@end