@interface PHAssetResourceUploadJobConfigurationChangeRequest
+ (id)changeRequestForAssetResourceUploadJobConfiguration:(id)configuration;
+ (id)changeRequestForConfiguration:(id)configuration;
+ (id)creationRequestForAssetResourceUploadJobConfiguration;
+ (void)deleteAssetResourceUploadJobConfigurations:(id)configurations;
- (BOOL)_confirmAppHasValidExtensionWithPhotoLibrary:(id)library error:(id *)error;
- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (signed)state;
- (void)encodeToXPCDict:(id)dict;
- (void)setState:(signed __int16)state;
@end

@implementation PHAssetResourceUploadJobConfigurationChangeRequest

- (void)setState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"state"];
}

- (signed)state
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"state"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHAssetResourceUploadJobConfigurationChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  xpc_dictionary_set_BOOL(xdict, "skipExtensionValidation", self->_skipExtensionValidation);
}

- (PHAssetResourceUploadJobConfigurationChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v15.receiver = self;
  v15.super_class = PHAssetResourceUploadJobConfigurationChangeRequest;
  v11 = [(PHChangeRequest *)&v15 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v11->_skipExtensionValidation = xpc_dictionary_get_BOOL(dictCopy, "skipExtensionValidation");
  }

  return v11;
}

- (BOOL)_confirmAppHasValidExtensionWithPhotoLibrary:(id)library error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  clientAuthorization = [(PHChangeRequestHelper *)self->super._helper clientAuthorization];
  trustedCallerBundleID = [clientAuthorization trustedCallerBundleID];

  if ((PLIsInternalTool() & 1) != 0 || [trustedCallerBundleID isEqualToString:@"com.apple.plphotosctl"]) && (PFOSVariantHasInternalDiagnostics() & 1) != 0 || objc_msgSend(libraryCopy, "isUnitTesting") && !-[PHAssetResourceUploadJobConfigurationChangeRequest skipExtensionValidation](self, "skipExtensionValidation") || (-[PHChangeRequestHelper clientAuthorization](self->super._helper, "clientAuthorization"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isBackgroundResourceUploadExtensionClient"), v9, (v10))
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

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    v11 = 0;
  }

  return v11;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (![(PHAssetResourceUploadJobConfigurationChangeRequest *)self _confirmAppHasValidExtensionWithPhotoLibrary:libraryCopy error:error])
  {
    v15 = 0;
    goto LABEL_10;
  }

  clientAuthorization = [(PHChangeRequestHelper *)self->super._helper clientAuthorization];
  trustedCallerBundleID = [clientAuthorization trustedCallerBundleID];

  v9 = MEMORY[0x1E69BE278];
  managedObjectContext = [libraryCopy managedObjectContext];
  v11 = [v9 configurationWithBundleIdentifier:trustedCallerBundleID managedObjectContext:managedObjectContext error:0];

  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"An existing configuration record for the same bundle identifier was found";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v12 errorWithDomain:@"PHPhotosErrorDomain" code:3202 userInfo:v13];
    if (error)
    {
      v14 = v14;
      *error = v14;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69BE278];
    managedObjectContext2 = [libraryCopy managedObjectContext];
    uuid = [(PHChangeRequest *)self uuid];
    v15 = [v16 insertIntoManagedObjectContext:managedObjectContext2 uuid:uuid bundleID:trustedCallerBundleID];

    if (v15)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A278];
    v24 = @"Failed to create AssetResourceUploadJobConfiguration";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v21];

    if (error)
    {
      v22 = v13;
      *error = v13;
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

+ (void)deleteAssetResourceUploadJobConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = [(PHObjectDeleteRequest *)PHAssetResourceUploadJobConfigurationDeleteRequest deleteRequestsForObjects:configurationsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForAssetResourceUploadJobConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobConfigurationChangeRequest alloc];
    uuid = [configurationCopy uuid];
    objectID = [configurationCopy objectID];
    v7 = [(PHAssetResourceUploadJobConfigurationChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)changeRequestForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobConfigurationChangeRequest alloc];
    uuid = [configurationCopy uuid];
    objectID = [configurationCopy objectID];
    v7 = [(PHAssetResourceUploadJobConfigurationChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForAssetResourceUploadJobConfiguration
{
  initForNewObject = [[PHAssetResourceUploadJobConfigurationChangeRequest alloc] initForNewObject];
  [initForNewObject setState:3];

  return initForNewObject;
}

@end