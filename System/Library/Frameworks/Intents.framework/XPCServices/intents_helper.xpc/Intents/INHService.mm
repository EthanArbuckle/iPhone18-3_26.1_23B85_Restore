@interface INHService
- (BOOL)_checkServiceAccessWithError:(id *)error;
- (INHService)initWithServingConnection:(id)connection;
- (NSXPCConnection)servingConnection;
- (void)fetchShareExtensionIntentForExtensionContextUUID:(id)d completion:(id)completion;
- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion;
- (void)loadBundleURLsForBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)loadDataImageForImage:(id)image scaledWidth:(double)width scaledHeight:(double)height usingPortableImageLoader:(id)loader completion:(id)completion;
- (void)loadSchemaURLsForBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)loadSchemaURLsWithCompletion:(id)completion;
- (void)purgeExpiredImagesInEphemeralStore;
- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion;
- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier;
@end

@implementation INHService

- (NSXPCConnection)servingConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_servingConnection);

  return WeakRetained;
}

- (void)storeUserContext:(id)context forBundleIdentifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[INHService storeUserContext:forBundleIdentifier:]";
    v11 = 2112;
    v12 = contextCopy;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Within intents_helper, entitled-saving UserContext:%@ for bundle: %@", &v9, 0x20u);
  }

  v8 = +[INUserContextStore sharedStore];
  [v8 storeUserContext:contextCopy forBundleIdentifier:identifierCopy];
}

- (BOOL)_checkServiceAccessWithError:(id *)error
{
  servingConnection = [(INHService *)self servingConnection];
  v5 = [INHelperServiceAccessSpecifier accessSpecifierAppropriateForXPCConnection:servingConnection];

  accessLevel = [v5 accessLevel];
  v7 = accessLevel;
  if (error && accessLevel != 2)
  {
    v8 = [NSError alloc];
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"Client does not have sufficient permissions to access bundle";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *error = [v8 initWithDomain:INIntentErrorDomain code:6010 userInfo:v9];
  }

  return v7 == 2;
}

- (void)fetchShareExtensionIntentForExtensionContextUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  servingConnection = [(INHService *)self servingConnection];
  v8 = servingConnection;
  if (servingConnection)
  {
    [servingConnection auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v9 = [LSBundleProxy bundleProxyWithAuditToken:buf error:0];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  bundleIdentifier = [v11 bundleIdentifier];
  if (v11 && ([v11 protocol], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"com.apple.share-services"), v13, v14))
  {
    v35 = v11;
    v15 = [NSArray arrayWithObjects:&v35 count:1];
    v16 = INSupportedIntentsByExtensions();

    if (![v16 count])
    {
      v17 = [v11 objectForInfoDictionaryKey:@"ShareSheetSuggestionsSupported-Minimum-iOS13.5" ofClass:objc_opt_class() inScope:0];
      if (v17)
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [NSSet setWithObjects:v19, 0];

        v16 = v20;
      }
    }

    containingBundle = [v11 containingBundle];
    bundleIdentifier2 = [containingBundle bundleIdentifier];
    v23 = 0;
    if ([v16 count] && bundleIdentifier2)
    {
      v28 = bundleIdentifier2;
      v29 = bundleIdentifier;
      v24 = dCopy;
      v25 = v16;
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v26 = off_10000C7D8;
      v34 = off_10000C7D8;
      if (!off_10000C7D8)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000019BC;
        *&buf[24] = &unk_100008388;
        v37 = &v31;
        sub_1000019BC(buf);
        v26 = v32[3];
      }

      _Block_object_dispose(&v31, 8);
      if (!v26)
      {
        dlerror();
        abort_report_np();
        __break(1u);
      }

      v23 = v26(v28, v29, v24, v25);
    }
  }

  else
  {
    v23 = 0;
  }

  v27 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[INHService fetchShareExtensionIntentForExtensionContextUUID:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2112;
    *&buf[24] = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Fetched share extension intent %@ from people suggester for bundleID %@", buf, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v23);
  }
}

- (void)loadBundleURLsForBundleIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if ([identifiersCopy count])
  {
    v30 = 0;
    v8 = [(INHService *)self _checkServiceAccessWithError:&v30];
    v9 = v30;
    v10 = v9;
    if (v8)
    {
      v24 = v9;
      v25 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = identifiersCopy;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [APApplication applicationWithBundleIdentifier:v16, v24];
            isHidden = [v17 isHidden];

            if ((isHidden & 1) == 0)
            {
              v19 = [LSBundleProxy bundleProxyForIdentifier:v16];
              bundleURL = [v19 bundleURL];

              if (bundleURL)
              {
                v21 = [NSSecurityScopedURLWrapper alloc];
                bundleURL2 = [v19 bundleURL];
                v23 = [v21 initWithURL:bundleURL2 readonly:1];
                [v25 setObject:v23 forKey:v16];
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v13);
      }

      completionCopy[2](completionCopy, v25, 0);
      v10 = v24;
    }

    else
    {
      (completionCopy)[2](completionCopy, 0, v9);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)loadSchemaURLsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001F9C;
  v19[3] = &unk_100008320;
  v7 = v5;
  v20 = v7;
  [v6 enumerateBundlesOfType:1 block:v19];

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100001FA8;
  v17 = &unk_100008320;
  v9 = v7;
  v18 = v9;
  [v8 enumerateBundlesOfType:6 block:&v14];

  v10 = [v9 if_compactMap:{&stru_100008360, v14, v15, v16, v17}];
  v11 = [NSSet setWithArray:v10];
  v12 = [v11 mutableCopy];

  allBundleIdentifiers = [_INVCIntentDefinitionManagerClass() allBundleIdentifiers];
  if (allBundleIdentifiers)
  {
    [v12 addObjectsFromArray:allBundleIdentifiers];
  }

  [(INHService *)self loadSchemaURLsForBundleIdentifiers:v12 completion:completionCopy];
}

- (void)loadSchemaURLsForBundleIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (![identifiersCopy count])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_32;
  }

  v44 = 0;
  v8 = [(INHService *)self _checkServiceAccessWithError:&v44];
  v9 = v44;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_31;
  }

  v27 = v9;
  v28 = completionCopy;
  v31 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = identifiersCopy;
  obj = identifiersCopy;
  v33 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v33)
  {
    goto LABEL_25;
  }

  v32 = *v41;
  do
  {
    v11 = 0;
    do
    {
      if (*v41 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      v39 = 0;
      v13 = [LSBundleRecord bundleRecordWithBundleIdentifier:v12 allowPlaceholder:0 error:&v39];
      v14 = v39;
      if (v14)
      {
        v15 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v47 = "[INHService loadSchemaURLsForBundleIdentifiers:completion:]";
          v48 = 2112;
          v49 = v12;
          v50 = 2112;
          v51 = v14;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error getting bundle record for bundle identifier %@: %@", buf, 0x20u);
        }
      }

      if (v13)
      {
        intentDefinitionURLs = [v13 intentDefinitionURLs];
        allValues = [intentDefinitionURLs allValues];
        v18 = [NSSet setWithArray:allValues];

        if (![v18 count])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = [_INVCIntentDefinitionManagerClass() intentDefinitionURLsForBundleID:v12];
        v18 = [NSSet setWithArray:v19];
      }

      v34 = v14;
      v20 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = v18;
      v21 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = [[NSSecurityScopedURLWrapper alloc] initWithURL:*(*(&v35 + 1) + 8 * i) readonly:1];
            [v20 addObject:v25];
          }

          v22 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v22);
      }

      [v31 setObject:v20 forKey:v12];
      v14 = v34;
LABEL_23:

      v11 = v11 + 1;
    }

    while (v11 != v33);
    v33 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v33);
LABEL_25:

  if ([v31 count])
  {
    v26 = v31;
  }

  else
  {
    v26 = 0;
  }

  completionCopy = v28;
  (*(v28 + 2))(v28, v26, 0);

  identifiersCopy = v29;
  v10 = v27;
LABEL_31:

LABEL_32:
}

- (void)purgeExpiredImagesInEphemeralStore
{
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[INHService purgeExpiredImagesInEphemeralStore]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Purging all expired ephemeral images in INImageFilePersistence", &v4, 0xCu);
  }

  [(INImageFilePersistence *)self->_filePersistence purgeExpiredImagesInEphemeralStore];
}

- (void)purgeImageWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[INHService purgeImageWithIdentifier:completion:]";
    v11 = 2112;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Purging image %@ from INImageFilePersistence", &v9, 0x16u);
  }

  [(INImageFilePersistence *)self->_filePersistence purgeImageWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)filePathForImage:(id)image usingPortableImageLoader:(id)loader completion:(id)completion
{
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[INHService filePathForImage:usingPortableImageLoader:completion:]";
      v13 = 2112;
      v14 = imageCopy;
      v15 = 2112;
      v16 = loaderCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Loading image file path for %@ with portable image loader %@", &v11, 0x20u);
    }

    [loaderCopy filePathForImage:imageCopy completion:completionCopy];
  }
}

- (void)loadDataImageForImage:(id)image scaledWidth:(double)width scaledHeight:(double)height usingPortableImageLoader:(id)loader completion:(id)completion
{
  imageCopy = image;
  loaderCopy = loader;
  completionCopy = completion;
  if (completionCopy)
  {
    servingConnection = [(INHService *)self servingConnection];
    v16 = [INHelperServiceAccessSpecifier accessSpecifierAppropriateForXPCConnection:servingConnection];

    v17 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[INHService loadDataImageForImage:scaledWidth:scaledHeight:usingPortableImageLoader:completion:]";
      v24 = 2112;
      v25 = imageCopy;
      v26 = 2112;
      v27 = loaderCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Loading image %@ with portable image loader %@", buf, 0x20u);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000028FC;
    v18[3] = &unk_1000082F8;
    v19 = completionCopy;
    widthCopy = width;
    heightCopy = height;
    [loaderCopy loadImageDataFromImage:imageCopy accessSpecifier:v16 completion:v18];
  }
}

- (void)retrieveImageWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[INHService retrieveImageWithIdentifier:completion:]";
    v11 = 2112;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Retrieving image with identifier %@ with INImageFilePersistence", &v9, 0x16u);
  }

  [(INImageFilePersistence *)self->_filePersistence retrieveImageWithIdentifier:identifierCopy completion:completionCopy];
}

- (INHService)initWithServingConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = INHService;
  v5 = [(INHService *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_servingConnection, connectionCopy);
    v7 = objc_alloc_init(INImageFilePersistence);
    filePersistence = v6->_filePersistence;
    v6->_filePersistence = v7;
  }

  return v6;
}

@end