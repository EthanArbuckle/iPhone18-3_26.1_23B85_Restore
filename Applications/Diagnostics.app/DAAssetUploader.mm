@interface DAAssetUploader
- (DAAssetUploader)init;
- (void)ASTUploadClientDidCompleteFileUpload:(id)upload;
- (void)uploadAssets:(id)assets wtihDeviceIdentity:(id)identity completion:(id)completion;
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

- (void)uploadAssets:(id)assets wtihDeviceIdentity:(id)identity completion:(id)completion
{
  assetsCopy = assets;
  identityCopy = identity;
  completionCopy = completion;
  items = [assetsCopy items];
  v9 = [items count];

  if (!v9)
  {
    v10 = +[NSArray array];
    v11 = [NSError errorWithDomain:DKErrorDomain code:0 userInfo:0];
    completionCopy[2](completionCopy, v10, v11);
  }

  v57 = +[NSMutableArray array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v50 = assetsCopy;
  obj = [assetsCopy items];
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
        extra = [v16 extra];
        v18 = [extra objectForKeyedSubscript:@"name"];

        extra2 = [v16 extra];
        v20 = [extra2 objectForKeyedSubscript:@"encryptionKey"];

        extra3 = [v16 extra];
        v22 = [extra3 objectForKeyedSubscript:@"token"];

        extra4 = [v16 extra];
        v24 = [extra4 objectForKeyedSubscript:@"extraHeaders"];
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
  completionMap = [(DAAssetUploader *)self completionMap];
  v31 = objc_retainBlock(completionCopy);
  obja = v29;
  [completionMap setObject:v31 forKey:v29];

  v32 = +[NSMutableDictionary dictionary];
  v33 = identityCopy;
  if (identityCopy)
  {
    deviceIdentityCert = [identityCopy deviceIdentityCert];
    deviceIdentityPublicKeyDigest = [identityCopy deviceIdentityPublicKeyDigest];
    v36 = [deviceIdentityCert base64EncodedStringWithOptions:0];
    [v32 setObject:v36 forKeyedSubscript:@"certString"];

    v37 = [deviceIdentityPublicKeyDigest base64EncodedStringWithOptions:0];
    [v32 setObject:v37 forKeyedSubscript:@"pubKeyDigest"];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  items2 = [v50 items];
  v38 = [items2 countByEnumeratingWithState:&v60 objects:v68 count:16];
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
          objc_enumerationMutation(items2);
        }

        v41 = *(*(&v60 + 1) + 8 * j);
        extra5 = [v41 extra];
        v43 = [extra5 objectForKeyedSubscript:@"name"];

        v44 = +[NSMutableDictionary dictionary];
        [v44 setObject:v43 forKeyedSubscript:@"name"];
        if (v33)
        {
          data = [v41 data];
          v59 = 0;
          v46 = [identityCopy signPayload:data error:&v59];

          [v44 setObject:v32 forKeyedSubscript:@"cert"];
          v47 = [v32 objectForKeyedSubscript:@"pubKeyDigest"];
          [v44 setObject:v47 forKeyedSubscript:@"pubKeyDigest"];

          v48 = [v46 base64EncodedStringWithOptions:0];
          [v44 setObject:v48 forKeyedSubscript:@"sig"];

          v33 = identityCopy;
        }

        data2 = [v41 data];
        [obja queueUploadWithSourceData:data2 andExtra:v44];
      }

      v39 = [items2 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v39);
  }
}

- (void)ASTUploadClientDidCompleteFileUpload:(id)upload
{
  uploadCopy = upload;
  completionMap = [(DAAssetUploader *)self completionMap];
  v5 = [completionMap objectForKey:uploadCopy];

  if (v5)
  {
    completionMap2 = [(DAAssetUploader *)self completionMap];
    [completionMap2 removeObjectForKey:uploadCopy];

    uploadStatus = [uploadCopy uploadStatus];
    (v5)[2](v5, uploadStatus, 0);
  }
}

@end