@interface _LSDiskUsage
+ (id)ODRConnection;
+ (id)ODRUsageForBundleIdentifier:(id)a3 error:(id *)a4;
+ (id)_serverQueue;
+ (id)mobileInstallationQueue;
+ (id)propertyQueue;
+ (id)usageFromMobileInstallationForBundleIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_fetchWithXPCConnection:(id)a3 error:(id *)a4;
- (BOOL)fetchClientSideWithError:(id *)a3;
- (BOOL)fetchServerSideWithConnection:(id)a3 error:(id *)a4;
- (NSNumber)dynamicUsage;
- (NSNumber)onDemandResourcesUsage;
- (NSNumber)sharedUsage;
- (NSNumber)staticUsage;
- (_LSDiskUsage)initWithCoder:(id)a3;
- (id)_initWithBundleIdentifier:(id)a3 alreadyKnownUsage:(id)a4 validationToken:(id)a5;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllCachedUsageValues;
@end

@implementation _LSDiskUsage

+ (id)propertyQueue
{
  if (+[_LSDiskUsage(Private) propertyQueue]::once != -1)
  {
    +[_LSDiskUsage(Private) propertyQueue];
  }

  v3 = +[_LSDiskUsage(Private) propertyQueue]::result;

  return v3;
}

- (NSNumber)staticUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  v3 = [objc_opt_class() propertyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27___LSDiskUsage_staticUsage__block_invoke;
  v6[3] = &unk_1E6A1AE60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSNumber)dynamicUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  if ([(_LSDiskUsage *)self _fetchWithXPCConnection:0 error:0])
  {
    v3 = [objc_opt_class() propertyQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28___LSDiskUsage_dynamicUsage__block_invoke;
    v6[3] = &unk_1E6A1AE60;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSNumber)onDemandResourcesUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  if ([(_LSDiskUsage *)self _fetchWithXPCConnection:0 error:0])
  {
    v3 = [objc_opt_class() propertyQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38___LSDiskUsage_onDemandResourcesUsage__block_invoke;
    v6[3] = &unk_1E6A1AE60;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSNumber)sharedUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  if ([(_LSDiskUsage *)self _fetchWithXPCConnection:0 error:0])
  {
    v3 = [objc_opt_class() propertyQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27___LSDiskUsage_sharedUsage__block_invoke;
    v6[3] = &unk_1E6A1AE60;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(v3, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)removeAllCachedUsageValues
{
  v3 = [objc_opt_class() propertyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___LSDiskUsage_removeAllCachedUsageValues__block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_barrier_async(v3, block);
}

- (id)debugDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__19;
  v12 = 0;
  v3 = [objc_opt_class() propertyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32___LSDiskUsage_debugDescription__block_invoke;
  v6[3] = &unk_1E6A1AE60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  v5 = [objc_opt_class() propertyQueue];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __32___LSDiskUsage_encodeWithCoder___block_invoke;
  v10 = &unk_1E6A1ABE8;
  v6 = v4;
  v11 = v6;
  v12 = self;
  dispatch_sync(v5, &v7);

  [v6 encodeObject:self->_validationToken forKey:{@"validationToken", v7, v8, v9, v10}];
}

- (_LSDiskUsage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = objc_opt_class();
  v7 = [v4 ls_decodeDictionaryWithKeysOfClass:v6 valuesOfClass:objc_opt_class() forKey:@"knownUsage"];
  v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"validationToken"];
  v9 = [(_LSDiskUsage *)self _initWithBundleIdentifier:v5 alreadyKnownUsage:v7 validationToken:v8];

  return v9;
}

+ (id)_serverQueue
{
  _LSAssertRunningInServer("+[_LSDiskUsage(Internal) _serverQueue]");
  if (+[_LSDiskUsage(Internal) _serverQueue]::once != -1)
  {
    +[_LSDiskUsage(Internal) _serverQueue];
  }

  v2 = +[_LSDiskUsage(Internal) _serverQueue]::result;

  return v2;
}

- (id)_initWithBundleIdentifier:(id)a3 alreadyKnownUsage:(id)a4 validationToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _LSDiskUsage;
  v11 = [(_LSDiskUsage *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    if (v9 && [v9 count])
    {
      v14 = [v9 mutableCopy];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    }

    usage = v11->_usage;
    v11->_usage = v14;

    objc_storeStrong(&v11->_validationToken, a5);
  }

  return v11;
}

- (BOOL)_fetchWithXPCConnection:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self->_bundleIdentifier;
  if (!v7)
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"invalid input parameters";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDiskUsage(Internal) _fetchWithXPCConnection:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDiskUsage.mm", 249);

    v13 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [objc_opt_class() propertyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___LSDiskUsage_Internal___fetchWithXPCConnection_error___block_invoke;
  block[3] = &unk_1E6A1AE60;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(v8, block);

  if (*(v21 + 24) == 1)
  {
    if ([__LSDefaultsGetSharedInstance() isServer])
    {
      v18 = 0;
      v9 = &v18;
      v10 = [(_LSDiskUsage *)self fetchServerSideWithConnection:v6 error:&v18];
    }

    else
    {
      v17 = 0;
      v9 = &v17;
      v10 = [(_LSDiskUsage *)self fetchClientSideWithError:&v17];
    }

    v13 = v10;
    v12 = *v9;
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  _Block_object_dispose(&v20, 8);
  if (a4)
  {
LABEL_11:
    if (!v13)
    {
      v14 = v12;
      *a4 = v12;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)mobileInstallationQueue
{
  _LSAssertRunningInServer("+[_LSDiskUsage(Private) mobileInstallationQueue]");
  if (+[_LSDiskUsage(Private) mobileInstallationQueue]::once != -1)
  {
    +[_LSDiskUsage(Private) mobileInstallationQueue];
  }

  v2 = +[_LSDiskUsage(Private) mobileInstallationQueue]::result;

  return v2;
}

+ (id)usageFromMobileInstallationForBundleIdentifier:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [a1 mobileInstallationQueue];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __78___LSDiskUsage_Private__usageFromMobileInstallationForBundleIdentifier_error___block_invoke;
    v19 = &unk_1E6A1BD68;
    v20 = v6;
    v8 = _LSDispatchWithTimeout(v7, &v16, 5.0);
    v9 = [v8 result];
    v10 = v9 == 0;

    if (v10)
    {
      v12 = [v8 error];
      v11 = 0;
    }

    else
    {
      v11 = [v8 result];
      v12 = 0;
    }
  }

  else
  {
    v21 = *MEMORY[0x1E696A278];
    v22[0] = @"invalid bundleIdentifier";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "+[_LSDiskUsage(Private) usageFromMobileInstallationForBundleIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDiskUsage.mm", 331);
    v11 = 0;
  }

  if (a4 && !v11)
  {
    v13 = v12;
    *a4 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)ODRConnection
{
  if (+[_LSDiskUsage(Private) ODRConnection]::once != -1)
  {
    +[_LSDiskUsage(Private) ODRConnection];
  }

  v3 = +[_LSDiskUsage(Private) ODRConnection]::result;

  return v3;
}

+ (id)ODRUsageForBundleIdentifier:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"invalid bundleIdentifier";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "+[_LSDiskUsage(Private) ODRUsageForBundleIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDiskUsage.mm", 400);
LABEL_7:

    goto LABEL_8;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___LSDiskUsage_Private__ODRUsageForBundleIdentifier_error___block_invoke;
  v20[3] = &unk_1E6A1BDB8;
  v22 = a1;
  v21 = v6;
  v8 = _LSDispatchWithTimeout(0, v20, 5.0);
  v9 = [v8 result];
  v10 = v9 == 0;

  if (v10)
  {
    v12 = [v8 error];

    v13 = v21;
    goto LABEL_7;
  }

  v11 = [v8 result];

  v12 = 0;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = [v12 domain];
  if ([v14 isEqual:*MEMORY[0x1E696A798]])
  {
    v15 = [v12 code] == 60;

    if (!v15)
    {
      goto LABEL_13;
    }

    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "timeout waiting for ODR daemon bytesUsedForApplicationWithBundleID to return", v19, 2u);
    }
  }

LABEL_13:
  if (a4)
  {
    v16 = v12;
    v11 = 0;
    *a4 = v12;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)fetchServerSideWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  _LSAssertRunningInServer("[_LSDiskUsage(Private) fetchServerSideWithConnection:error:]");
  if ([__LSDefaultsGetSharedInstance() isInSyncBubble])
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "cannot calculate disk usage per bundle in the sync bubble", buf, 2u);
    }

    v8 = 424;
    v9 = &LSApplicationWorkspaceErrorDomain;
    v10 = 110;
    goto LABEL_11;
  }

  if (![_LSBundleIDValidationToken isToken:self->_bundleIdentifier correctForBundleIdentifier:v6 connection:?])
  {
    v8 = 428;
    v10 = -54;
    v9 = MEMORY[0x1E696A768];
LABEL_11:
    v15 = _LSMakeNSErrorImpl(*v9, v10, 0, "[_LSDiskUsage(Private) fetchServerSideWithConnection:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDiskUsage.mm", v8);
    goto LABEL_12;
  }

  v11 = [(NSMutableDictionary *)self->_usage mutableCopy];
  if (!v11)
  {
    v15 = 0;
LABEL_12:
    v21 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12 = objc_opt_class();
  bundleIdentifier = self->_bundleIdentifier;
  v27 = 0;
  v14 = [v12 usageFromMobileInstallationForBundleIdentifier:bundleIdentifier error:&v27];
  v15 = v27;
  if (v14)
  {
    [v11 addEntriesFromDictionary:v14];

    v16 = objc_opt_class();
    v17 = self->_bundleIdentifier;
    v26 = v15;
    v18 = [v16 ODRUsageForBundleIdentifier:v17 error:&v26];
    v19 = v26;

    if (v18)
    {
      [v11 setObject:v18 forKeyedSubscript:@"ODR"];

      v20 = [objc_opt_class() propertyQueue];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __61___LSDiskUsage_Private__fetchServerSideWithConnection_error___block_invoke;
      v24[3] = &unk_1E6A1ABE8;
      v24[4] = self;
      v25 = v11;
      v11 = v11;
      dispatch_barrier_async(v20, v24);

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v15 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
LABEL_13:
    if (!v21)
    {
      v22 = v15;
      *a4 = v15;
    }
  }

LABEL_15:

  return v21;
}

- (BOOL)fetchClientSideWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  v14 = __Block_byref_object_dispose__19;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___LSDiskUsage_Private__fetchClientSideWithError___block_invoke;
  v9[3] = &unk_1E6A1BDE0;
  v9[4] = self;
  v9[5] = &v10;
  v5 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___LSDiskUsage_Private__fetchClientSideWithError___block_invoke_145;
  v8[3] = &unk_1E6A1BE08;
  v8[4] = self;
  v8[5] = &v16;
  v8[6] = &v10;
  [v5 getDiskUsage:self completionHandler:v8];
  v6 = *(v17 + 24);
  if (a3 && (v17[3] & 1) == 0)
  {
    *a3 = v11[5];
    v6 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

@end