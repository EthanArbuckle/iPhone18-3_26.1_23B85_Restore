@interface INImageServiceConnection
+ (id)sharedConnection;
- (BOOL)accessBundleContentForBundleIdentifiers:(id)identifiers withBlock:(id)block error:(id *)error;
- (INImageServiceConnection)init;
- (NSString)serviceIdentifier;
- (id)_availableBundleIdentifiers;
- (id)_localStorageCache;
- (id)availableSchemasWithError:(id *)error;
- (id)fetchShareExtensionIntentForExtensionContextUUID:(id)d;
- (id)imageServiceSchemaURLsForBundleIdentifiers:(id)identifiers error:(id *)error;
- (id)loadDataImageFromImage:(id)image scaledSize:(id)size error:(id *)error;
- (id)loadSchemasForBundleIdentifiers:(id)identifiers error:(id *)error;
- (id)schemaURLsForBundleIdentifiers:(id)identifiers;
- (id)securityScopedURLsForBundleIdentifiers:(id)identifiers error:(id *)error;
- (id)serviceProxyWithErrorHandler:(id)handler;
- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error;
- (id)synchronousServiceProxyWithErrorHandler:(id)handler;
- (unint64_t)servicePriority;
- (void)dealloc;
- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion;
- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion;
- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier;
@end

@implementation INImageServiceConnection

- (INImageServiceConnection)init
{
  v16.receiver = self;
  v16.super_class = INImageServiceConnection;
  v2 = [(INImageServiceConnection *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [v3 initWithServiceName:INHelperServiceName];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = v2->_connection;
    v7 = INHelperServingXPCInterface();
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    LODWORD(v6) = [(NSXPCConnection *)v2->_connection processIdentifier];
    v8 = v2->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__INImageServiceConnection_init__block_invoke;
    v14[3] = &__block_descriptor_36_e5_v8__0l;
    v15 = v6;
    [(NSXPCConnection *)v8 setInterruptionHandler:v14];
    v9 = v2->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__INImageServiceConnection_init__block_invoke_2;
    v12[3] = &__block_descriptor_36_e5_v8__0l;
    v13 = v6;
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)v2->_connection resume];
    v10 = v2;
  }

  return v2;
}

- (NSString)serviceIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__INImageServiceConnection_serviceIdentifier__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  if (serviceIdentifier_onceToken != -1)
  {
    dispatch_once(&serviceIdentifier_onceToken, block);
  }

  return serviceIdentifier_sServiceIdentifier;
}

void __45__INImageServiceConnection_serviceIdentifier__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:v2];
  v4 = [v8 bundleIdentifier];
  v5 = NSStringFromClass(v2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];
  v7 = serviceIdentifier_sServiceIdentifier;
  serviceIdentifier_sServiceIdentifier = v6;
}

- (unint64_t)servicePriority
{
  if (INThisProcessIsSiri_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsSiri_onceToken, &__block_literal_global_40);
  }

  if (INThisProcessIsSiri_isSiri)
  {
    return 25;
  }

  if (INThisProcessIsCarousel_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsCarousel_onceToken, &__block_literal_global_43);
  }

  if (INThisProcessIsCarousel_isCarousel)
  {
    return 25;
  }

  else
  {
    return 75;
  }
}

- (id)_localStorageCache
{
  localStorageCache = self->_localStorageCache;
  if (!localStorageCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_localStorageCache;
    self->_localStorageCache = v4;

    localStorageCache = self->_localStorageCache;
  }

  return localStorageCache;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, &__block_literal_global_68336);
  }

  v3 = sharedConnection_sImageServiceConnection;

  return v3;
}

- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[INImageServiceConnection storeUserContext:forBundleIdentifier:]";
    v14 = 2112;
    v15 = contextCopy;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Storing UserContext:%@ for bundle:%@ over XPC in intents_helper", &v12, 0x20u);
  }

  v9 = [(INImageServiceConnection *)self serviceProxyWithErrorHandler:&__block_literal_global_78];
  v10 = v9;
  if (v9)
  {
    [v9 storeUserContext:contextCopy forBundleIdentifier:identifierCopy];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __65__INImageServiceConnection_storeUserContext_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[INImageServiceConnection storeUserContext:forBundleIdentifier:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s Error storing UserContext - %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[INImageServiceConnection purgeImageWithIdentifier:completion:]";
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Purging image with identifier %@ over XPC in intents_helper", buf, 0x16u);
  }

  v9 = [(INImageServiceConnection *)self serviceProxyWithErrorHandler:completionCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__INImageServiceConnection_purgeImageWithIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7282858;
  v14 = identifierCopy;
  selfCopy = self;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [v9 purgeImageWithIdentifier:v11 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __64__INImageServiceConnection_purgeImageWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && *(a1 + 32))
  {
    v4 = [*(a1 + 40) _localStorageCache];
    [v4 removeObjectForKey:*(a1 + 32)];

    v3 = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v7 = v3;
    v5 = (*(v5 + 16))();
    v3 = v7;
  }

  return MEMORY[0x1EEE66BB8](v5, v3);
}

- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[INImageServiceConnection retrieveImageWithIdentifier:completion:]";
      v22 = 2112;
      v23 = identifierCopy;
      _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Retrieving image with identifier %@ over XPC in intents_helper", buf, 0x16u);
    }

    _localStorageCache = [(INImageServiceConnection *)self _localStorageCache];
    v10 = [_localStorageCache objectForKey:identifierCopy];

    if (v10)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v21 = "[INImageServiceConnection retrieveImageWithIdentifier:completion:]";
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = identifierCopy;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Found image %@ in the local cache with identifier %@, returning it", buf, 0x20u);
      }

      completionCopy[2](completionCopy, v10, 0);
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __67__INImageServiceConnection_retrieveImageWithIdentifier_completion___block_invoke;
      v18[3] = &unk_1E7282710;
      v12 = completionCopy;
      v19 = v12;
      v13 = [(INImageServiceConnection *)self serviceProxyWithErrorHandler:v18];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__INImageServiceConnection_retrieveImageWithIdentifier_completion___block_invoke_2;
      v15[3] = &unk_1E72835A8;
      v15[4] = self;
      v16 = identifierCopy;
      v17 = v12;
      [v13 retrieveImageWithIdentifier:v16 completion:v15];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __67__INImageServiceConnection_retrieveImageWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && !v5)
  {
    v6 = [*(a1 + 32) _localStorageCache];
    [v6 setObject:v8 forKey:*(a1 + 40)];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (id)storeImage:(id)image scaled:(BOOL)scaled qualityOfService:(unsigned int)service storeType:(unint64_t)type error:(id *)error
{
  scaledCopy = scaled;
  v66 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v10 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[INImageServiceConnection storeImage:scaled:qualityOfService:storeType:error:]";
    *&buf[12] = 2112;
    *&buf[14] = imageCopy;
    _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Storing image %@ over XPC in intents_helper", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_11;
  }

  _localStorageCache = [(INImageServiceConnection *)self _localStorageCache];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v63 = __Block_byref_object_copy__68261;
  v64 = __Block_byref_object_dispose__68262;
  v65 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__68261;
  v54 = __Block_byref_object_dispose__68262;
  v55 = 0;
  mapTableRepresentation = [_localStorageCache mapTableRepresentation];
  keyEnumerator = [mapTableRepresentation keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __79__INImageServiceConnection_storeImage_scaled_qualityOfService_storeType_error___block_invoke;
  v45[3] = &unk_1E7282808;
  v48 = buf;
  v15 = _localStorageCache;
  v46 = v15;
  v16 = imageCopy;
  v47 = v16;
  v49 = &v50;
  [allObjects enumerateObjectsUsingBlock:v45];

  v17 = v51[5];
  if (v17)
  {
    v18 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *v56 = 136315650;
      v57 = "[INImageServiceConnection storeImage:scaled:qualityOfService:storeType:error:]";
      v58 = 2112;
      v59 = v16;
      v60 = 2112;
      v61 = v17;
      _os_log_impl(&dword_18E991000, v18, OS_LOG_TYPE_INFO, "%s Found image %@ in the local cache with identifier %@, returning w/ optimistic success", v56, 0x20u);
      v19 = v51[5];
    }

    else
    {
      v19 = v17;
    }

    mapTableRepresentation = v19;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);

  if (!v17)
  {
LABEL_11:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageURL = [imageCopy imageURL];
      v21 = imageURL;
      if (imageURL)
      {
        if ([imageURL isFileURL])
        {
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [v21 path];
          v24 = [defaultManager fileExistsAtPath:path];

          if (v24)
          {
            path2 = [v21 path];
            v26 = path2;
            [path2 fileSystemRepresentation];
            v27 = *MEMORY[0x1E69E9BA8];
            v28 = *MEMORY[0x1E69E9BE0];
            v29 = sandbox_extension_issue_file();

            if (v29)
            {
              v30 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v29 length:strlen(v29) + 1];
              [imageCopy _setSandboxExtensionData:v30];
            }

            else
            {
              v31 = INSiriLogContextIntents;
              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
              {
                v36 = v31;
                path3 = [v21 path];
                v38 = __error();
                v39 = strerror(*v38);
                *buf = 136315650;
                *&buf[4] = "[INImageServiceConnection storeImage:scaled:qualityOfService:storeType:error:]";
                *&buf[12] = 2112;
                *&buf[14] = path3;
                *&buf[22] = 2080;
                v63 = v39;
                _os_log_error_impl(&dword_18E991000, v36, OS_LOG_TYPE_ERROR, "%s Couldn't issue sandbox extension for '%@': %s", buf, 0x20u);
              }
            }
          }
        }
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v63 = __Block_byref_object_copy__68261;
    v64 = __Block_byref_object_dispose__68262;
    v65 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__68261;
    v54 = __Block_byref_object_dispose__68262;
    v55 = 0;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __79__INImageServiceConnection_storeImage_scaled_qualityOfService_storeType_error___block_invoke_75;
    v44[3] = &unk_1E7282698;
    v44[4] = &v50;
    v32 = [(INImageServiceConnection *)self synchronousServiceProxyWithErrorHandler:v44];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __79__INImageServiceConnection_storeImage_scaled_qualityOfService_storeType_error___block_invoke_2;
    v43[3] = &unk_1E7282830;
    v43[4] = buf;
    v43[5] = &v50;
    [v32 storeImage:imageCopy scaled:scaledCopy qualityOfService:service storeType:type completion:v43];

    if (*(*&buf[8] + 40) && !v51[5])
    {
      _localStorageCache2 = [(INImageServiceConnection *)self _localStorageCache];
      [_localStorageCache2 setObject:imageCopy forKey:*(*&buf[8] + 40)];
    }

    if (error)
    {
      *error = v51[5];
    }

    mapTableRepresentation = *(*&buf[8] + 40);
    _Block_object_dispose(&v50, 8);

    _Block_object_dispose(buf, 8);
  }

  v34 = *MEMORY[0x1E69E9840];

  return mapTableRepresentation;
}

void __79__INImageServiceConnection_storeImage_scaled_qualityOfService_storeType_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [*(a1 + 32) objectForKey:?];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 48) + 8) + 40) _identifier];
  v11 = [*(a1 + 40) _identifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  *a4 = v12;
}

void __79__INImageServiceConnection_storeImage_scaled_qualityOfService_storeType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchShareExtensionIntentForExtensionContextUUID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__68261;
  v13 = __Block_byref_object_dispose__68262;
  v14 = 0;
  v5 = [(INImageServiceConnection *)self synchronousServiceProxyWithErrorHandler:&__block_literal_global_69];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__INImageServiceConnection_fetchShareExtensionIntentForExtensionContextUUID___block_invoke_70;
  v8[3] = &unk_1E72827E0;
  v8[4] = &v9;
  [v5 fetchShareExtensionIntentForExtensionContextUUID:dCopy completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __77__INImageServiceConnection_fetchShareExtensionIntentForExtensionContextUUID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[INImageServiceConnection fetchShareExtensionIntentForExtensionContextUUID:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s Error in XPC connection when fetching selected share extension suggestion intent, %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)securityScopedURLsForBundleIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__68261;
    v23 = __Block_byref_object_dispose__68262;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__68261;
    v17 = __Block_byref_object_dispose__68262;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__INImageServiceConnection_securityScopedURLsForBundleIdentifiers_error___block_invoke;
    v12[3] = &unk_1E7282698;
    v12[4] = &v19;
    v7 = [(INImageServiceConnection *)self synchronousServiceProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__INImageServiceConnection_securityScopedURLsForBundleIdentifiers_error___block_invoke_2;
    v11[3] = &unk_1E7282738;
    v11[4] = &v13;
    v11[5] = &v19;
    [v7 loadBundleURLsForBundleIdentifiers:identifiersCopy completion:v11];

    v8 = v14[5];
    if (v8)
    {
      v9 = [v8 if_compactMap:&__block_literal_global_67];
    }

    else
    {
      v9 = 0;
      if (error)
      {
        *error = v20[5];
      }
    }

    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

void __73__INImageServiceConnection_securityScopedURLsForBundleIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id __73__INImageServiceConnection_securityScopedURLsForBundleIdentifiers_error___block_invoke_3(int a1, id a2, void *a3, void *a4, void *a5)
{
  *a4 = a2;
  result = [a3 url];
  *a5 = result;
  return result;
}

- (BOOL)accessBundleContentForBundleIdentifiers:(id)identifiers withBlock:(id)block error:(id *)error
{
  identifiersCopy = identifiers;
  blockCopy = block;
  if ([identifiersCopy count])
  {
    v9 = +[INBundleAccessManager sharedManager];
    allObjects = [identifiersCopy allObjects];
    v11 = [v9 grantForBundleIdentifiers:allObjects error:error];

    v12 = v11 != 0;
    if (v11)
    {
      [v11 acquire];
      blockCopy[2](blockCopy);
      [v11 relinquish];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)loadSchemasForBundleIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  if (![identifiersCopy count])
  {
    v11 = 0;
    goto LABEL_9;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager isReadableFileAtPath:@"/private/var/containers/Bundle/"];

  if (v8)
  {
    v9 = [(INImageServiceConnection *)self schemaURLsForBundleIdentifiers:identifiersCopy];
    v10 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0;
  v9 = [(INImageServiceConnection *)self imageServiceSchemaURLsForBundleIdentifiers:identifiersCopy error:&v14];
  v10 = v14;
  if (error)
  {
LABEL_7:
    v12 = v10;
    *error = v10;
  }

LABEL_8:
  v11 = _INSchemasByIdentifierWithSchemaURLsByIdentifier(v9);

LABEL_9:

  return v11;
}

- (id)availableSchemasWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager isReadableFileAtPath:@"/private/var/containers/Bundle/"];

  if (!v6)
  {
    v13 = 0;
    v8 = [(INImageServiceConnection *)self imageServiceSchemaURLsForBundleIdentifiers:0 error:&v13];
    v9 = v13;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _availableBundleIdentifiers = [(INImageServiceConnection *)self _availableBundleIdentifiers];
  v8 = [(INImageServiceConnection *)self schemaURLsForBundleIdentifiers:_availableBundleIdentifiers];

  v9 = 0;
  if (error)
  {
LABEL_5:
    v10 = v9;
    *error = v9;
  }

LABEL_6:
  v11 = _INSchemasByIdentifierWithSchemaURLsByIdentifier(v8);

  return v11;
}

- (id)imageServiceSchemaURLsForBundleIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__68261;
  v23 = __Block_byref_object_dispose__68262;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke;
  v18[3] = &unk_1E7282698;
  v18[4] = &v19;
  v7 = [(INImageServiceConnection *)self synchronousServiceProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__68261;
  v16 = __Block_byref_object_dispose__68262;
  v17 = 0;
  if ([identifiersCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke_3;
    v10[3] = &unk_1E7282738;
    v10[4] = &v12;
    v10[5] = &v19;
    [v7 loadSchemaURLsForBundleIdentifiers:identifiersCopy completion:v10];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke_2;
    v11[3] = &unk_1E7282738;
    v11[4] = &v12;
    v11[5] = &v19;
    [v7 loadSchemaURLsWithCompletion:v11];
  }

  if (error)
  {
    *error = v20[5];
  }

  v8 = [v13[5] if_compactMap:&__block_literal_global_58];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v19, 8);

  return v8;
}

void __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __77__INImageServiceConnection_imageServiceSchemaURLsForBundleIdentifiers_error___block_invoke_4(int a1, id a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  *a4 = a2;
  v10 = MEMORY[0x1E698B0D0];
  v11 = a3;
  v12 = [v10 applicationWithBundleIdentifier:a2];
  LODWORD(v10) = [v12 isHidden];

  if (v10)
  {
    *a4 = 0;
  }

  v14 = [v11 if_compactMap:&__block_literal_global_62];

  v13 = v14;
  *a5 = v14;
}

- (id)schemaURLsForBundleIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v17 = identifiersCopy;
    v18 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = identifiersCopy;
    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
          if (([v10 appProtectionHidden] & 1) == 0)
          {
            v11 = MEMORY[0x1E695DFD8];
            if (v10)
            {
              intentDefinitionURLs = [v10 intentDefinitionURLs];
              allValues = [intentDefinitionURLs allValues];
              v14 = [v11 setWithArray:allValues];
            }

            else
            {
              intentDefinitionURLs = [_INVCIntentDefinitionManagerClass() intentDefinitionURLsForBundleID:v8];
              v14 = [v11 setWithArray:intentDefinitionURLs];
            }

            if ([v14 count])
            {
              [v18 setObject:v14 forKey:v8];
            }
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }

    identifiersCopy = v17;
  }

  else
  {
    v18 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_availableBundleIdentifiers
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        bundleIdentifier = [v8 bundleIdentifier];
        [v2 addObject:bundleIdentifier];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = [objc_alloc(MEMORY[0x1E6963668]) initWithIdentifier:@"com.apple.intents-service" error:0];
  v11 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:? options:?];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * j);
        v17 = objc_autoreleasePoolPush();
        containingBundleRecord = [v16 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord bundleIdentifier];
        v20 = [v2 containsObject:bundleIdentifier2];

        if ((v20 & 1) == 0)
        {
          bundleIdentifier3 = [v16 bundleIdentifier];
          [v2 addObject:bundleIdentifier3];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v13);
  }

  allBundleIdentifiers = [_INVCIntentDefinitionManagerClass() allBundleIdentifiers];
  if (allBundleIdentifiers)
  {
    [v2 addObjectsFromArray:allBundleIdentifiers];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion
{
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!loaderCopy)
    {
      loaderCopy = objc_alloc_init(INPortableImageLoader);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__INImageServiceConnection_filePathForImage_usingPortableImageLoader_completion___block_invoke;
    v13[3] = &unk_1E7282710;
    v11 = completionCopy;
    v14 = v11;
    v12 = [(INImageServiceConnection *)self serviceProxyWithErrorHandler:v13];
    [v12 filePathForImage:imageCopy usingPortableImageLoader:loaderCopy completion:v11];
  }
}

- (void)loadDataImageFromImage:(id)image usingPortableImageLoader:(id)loader scaledSize:(id)size completion:(id)completion
{
  var1 = size.var1;
  var0 = size.var0;
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!loaderCopy)
    {
      loaderCopy = objc_alloc_init(INPortableImageLoader);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __98__INImageServiceConnection_loadDataImageFromImage_usingPortableImageLoader_scaledSize_completion___block_invoke;
    v16[3] = &unk_1E7282710;
    v14 = completionCopy;
    v17 = v14;
    v15 = [(INImageServiceConnection *)self serviceProxyWithErrorHandler:v16];
    [v15 loadDataImageForImage:imageCopy scaledWidth:loaderCopy scaledHeight:v14 usingPortableImageLoader:var0 completion:var1];
  }
}

- (id)serviceProxyWithErrorHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = self->_connection;
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  serviceName = [(NSXPCConnection *)v5 serviceName];
  connection = self->_connection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__INImageServiceConnection_serviceProxyWithErrorHandler___block_invoke;
  v19[3] = &unk_1E72826E8;
  v9 = v5;
  v20 = v9;
  v22 = processIdentifier;
  v10 = handlerCopy;
  v21 = v10;
  v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
  if ([v11 conformsToProtocol:&unk_1F0361998])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
    if (v10 && v11)
    {
      v13 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A278];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get a valid service proxy for service %@", serviceName];
      v24[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v13 errorWithDomain:@"IntentsErrorDomain" code:6000 userInfo:v15];
      (*(v10 + 2))(v10, v16);

      v12 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

void __57__INImageServiceConnection_serviceProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = 136315906;
    v10 = "[INImageServiceConnection serviceProxyWithErrorHandler:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_18E991000, v4, OS_LOG_TYPE_ERROR, "%s Error (from connection %@; pid: %d) when using image service: %@", &v9, 0x26u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)synchronousServiceProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_connection;
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__INImageServiceConnection_synchronousServiceProxyWithErrorHandler___block_invoke;
  v12[3] = &unk_1E72826E8;
  v15 = processIdentifier;
  v13 = v5;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = v5;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];

  return v10;
}

void __68__INImageServiceConnection_synchronousServiceProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = 136315906;
    v9 = "[INImageServiceConnection synchronousServiceProxyWithErrorHandler:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_18E991000, v4, OS_LOG_TYPE_ERROR, "%s Error (from connection %@; pid: %d) when using image service: %@", &v8, 0x26u);
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (id)loadDataImageFromImage:(id)image scaledSize:(id)size error:(id *)error
{
  var1 = size.var1;
  var0 = size.var0;
  v31 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v10 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = v10;
    v13 = [v11 numberWithDouble:var0];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:var1];
    *buf = 136315906;
    *&buf[4] = "[INImageServiceConnection loadDataImageFromImage:scaledSize:error:]";
    *&buf[12] = 2112;
    *&buf[14] = imageCopy;
    *&buf[22] = 2112;
    v29 = v13;
    LOWORD(v30) = 2112;
    *(&v30 + 2) = v14;
    _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Loading image %@ over XPC in intents_helper (scaledWidth = %@, scaledHeight = %@)", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__68261;
  *&v30 = __Block_byref_object_dispose__68262;
  *(&v30 + 1) = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__68261;
  v26 = __Block_byref_object_dispose__68262;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__INImageServiceConnection_loadDataImageFromImage_scaledSize_error___block_invoke;
  v21[3] = &unk_1E7282698;
  v21[4] = &v22;
  v15 = [(INImageServiceConnection *)self synchronousServiceProxyWithErrorHandler:v21];
  v16 = objc_alloc_init(INPortableImageLoader);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__INImageServiceConnection_loadDataImageFromImage_scaledSize_error___block_invoke_2;
  v20[3] = &unk_1E72826C0;
  v20[4] = buf;
  v20[5] = &v22;
  [v15 loadDataImageForImage:imageCopy scaledWidth:v16 scaledHeight:v20 usingPortableImageLoader:var0 completion:var1];

  if (error)
  {
    *error = v23[5];
  }

  v17 = *(*&buf[8] + 40);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __68__INImageServiceConnection_loadDataImageFromImage_scaledSize_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = INImageServiceConnection;
  [(INImageServiceConnection *)&v3 dealloc];
}

void __32__INImageServiceConnection_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[INImageServiceConnection init]_block_invoke";
    v7 = 2112;
    v8 = INHelperServiceName;
    v9 = 1024;
    v10 = v4;
    _os_log_error_impl(&dword_18E991000, v2, OS_LOG_TYPE_ERROR, "%s INImageServiceConnection to %@ interrupted; pid: %d", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __32__INImageServiceConnection_init__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[INImageServiceConnection init]_block_invoke";
    v7 = 2112;
    v8 = INHelperServiceName;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_18E991000, v2, OS_LOG_TYPE_INFO, "%s INImageServiceConnection to %@ invalidated; pid: %d", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __44__INImageServiceConnection_sharedConnection__block_invoke()
{
  v0 = objc_alloc_init(INImageServiceConnection);
  v1 = sharedConnection_sImageServiceConnection;
  sharedConnection_sImageServiceConnection = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end