@interface PHAssetResourceUploadJobConfigurationChangeRequest
+ (id)changeRequestForAssetResourceUploadJobConfiguration:(id)a3;
+ (id)changeRequestForConfiguration:(id)a3;
+ (id)creationRequestForAssetResourceUploadJobConfiguration;
+ (void)deleteAssetResourceUploadJobConfigurations:(id)a3;
- (BOOL)_confirmAppHasValidExtensionWithPhotoLibrary:(id)a3 error:(id *)a4;
- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (signed)state;
- (void)encodeToXPCDict:(id)a3;
- (void)setState:(signed __int16)a3;
@end

@implementation PHAssetResourceUploadJobConfigurationChangeRequest

- (void)setState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"state"];
}

- (signed)state
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"state"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHAssetResourceUploadJobConfigurationChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  xpc_dictionary_set_BOOL(xdict, "skipExtensionValidation", self->_skipExtensionValidation);
}

- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PHAssetResourceUploadJobConfigurationChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v11->_skipExtensionValidation = xpc_dictionary_get_BOOL(v8, "skipExtensionValidation");
  }

  return v11;
}

- (BOOL)_confirmAppHasValidExtensionWithPhotoLibrary:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequestHelper *)self->super._helper clientAuthorization];
  v8 = [v7 trustedCallerBundleID];

  if ((PLIsInternalTool() & 1) != 0 || [v8 isEqualToString:@"com.apple.plphotosctl"]) && (PFOSVariantHasInternalDiagnostics() & 1) != 0 || objc_msgSend(v6, "isUnitTesting") && !-[PHAssetResourceUploadJobConfigurationChangeRequest skipExtensionValidation](self, "skipExtensionValidation") || (-[PHChangeRequestHelper clientAuthorization](self->super._helper, "clientAuthorization"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isBackgroundResourceUploadExtensionClient"), v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18[0] = @"Failed to create AssetResourceUploadJobConfiguration - app missing extension";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v13];

    if (a4)
    {
      v15 = v14;
      *a4 = v14;
    }

    v11 = 0;
  }

  return v11;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(PHAssetResourceUploadJobConfigurationChangeRequest *)self _confirmAppHasValidExtensionWithPhotoLibrary:v6 error:a4])
  {
    v15 = 0;
    goto LABEL_10;
  }

  v7 = [(PHChangeRequestHelper *)self->super._helper clientAuthorization];
  v8 = [v7 trustedCallerBundleID];

  v9 = MEMORY[0x1E69BE278];
  v10 = [v6 managedObjectContext];
  v11 = [v9 configurationWithBundleIdentifier:v8 managedObjectContext:v10 error:0];

  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"An existing configuration record for the same bundle identifier was found";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v12 errorWithDomain:@"PHPhotosErrorDomain" code:3202 userInfo:v13];
    if (a4)
    {
      v14 = v14;
      *a4 = v14;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69BE278];
    v17 = [v6 managedObjectContext];
    v18 = [(PHChangeRequest *)self uuid];
    v15 = [v16 insertIntoManagedObjectContext:v17 uuid:v18 bundleID:v8];

    if (v15)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A278];
    v24 = @"Failed to create AssetResourceUploadJobConfiguration";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v21];

    if (a4)
    {
      v22 = v13;
      *a4 = v13;
    }
  }

  v15 = 0;
LABEL_9:

LABEL_10:

  return v15;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHAssetResourceUploadJobConfigurationChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

+ (void)deleteAssetResourceUploadJobConfigurations:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHAssetResourceUploadJobConfigurationDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForAssetResourceUploadJobConfiguration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobConfigurationChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHAssetResourceUploadJobConfigurationChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)changeRequestForConfiguration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobConfigurationChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHAssetResourceUploadJobConfigurationChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForAssetResourceUploadJobConfiguration
{
  v2 = [[PHAssetResourceUploadJobConfigurationChangeRequest alloc] initForNewObject];
  [v2 setState:3];

  return v2;
}

@end