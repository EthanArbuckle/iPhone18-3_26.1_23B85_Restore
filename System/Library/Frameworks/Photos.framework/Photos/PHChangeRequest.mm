@interface PHChangeRequest
+ (id)sanitizedFailureWithError:(id)error;
- (BOOL)isMutated;
- (BOOL)isNewRequest;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (BOOL)prepareForServicePreflightCheck:(id *)check;
- (NSString)changeTypeForSummary;
- (NSString)managedEntityName;
- (NSString)uuid;
- (PHChangeRequest)init;
- (PHChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHPhotoLibrary)photoLibrary;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)objectIDsFromXPCDict:(id)dict key:(const char *)key request:(id)request;
- (void)encodeToXPCDict:(id)dict;
- (void)performConcurrentWork;
@end

@implementation PHChangeRequest

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)objectIDsFromXPCDict:(id)dict key:(const char *)key request:(id)request
{
  requestCopy = request;
  v9 = xpc_dictionary_get_value(dict, key);
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    persistentStoreCoordinator = [requestCopy persistentStoreCoordinator];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __52__PHChangeRequest_objectIDsFromXPCDict_key_request___block_invoke;
    v20 = &unk_1E75AA628;
    v21 = persistentStoreCoordinator;
    v22 = v10;
    v12 = v10;
    v13 = persistentStoreCoordinator;
    xpc_array_apply(v9, &v17);
    v14 = [(PHChangeRequest *)self helper:v17];
    [v14 setMutated:1];

    [requestCopy recordUpdateRequest:self];
    v15 = [v12 copy];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

uint64_t __52__PHChangeRequest_objectIDsFromXPCDict_key_request___block_invoke(uint64_t a1)
{
  v2 = PLManagedObjectIDFromXPCValue();
  if (v2)
  {
    v3 = v2;
    v4 = [PHPhotoLibrary uniquedOID:v2];

    if (v4)
    {
      [*(a1 + 40) addObject:v4];
    }
  }

  return 1;
}

- (BOOL)prepareForServicePreflightCheck:(id *)check
{
  helper = [(PHChangeRequest *)self helper];
  v5 = helper;
  if (helper)
  {
    v6 = [helper prepareForServicePreflightCheck:check];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  checkCopy = check;
  helper = [(PHChangeRequest *)self helper];
  v8 = helper;
  if (helper)
  {
    v9 = [helper prepareForPhotoLibraryCheck:checkCopy error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (NSString)changeTypeForSummary
{
  managedEntityName = [(PHChangeRequest *)self managedEntityName];
  if (!managedEntityName)
  {
    managedEntityName = [objc_opt_class() description];
  }

  return managedEntityName;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_alloc(MEMORY[0x1E695DF30]);
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"%@ must implement %@", v9, v10];
  v12 = [v5 initWithName:v6 reason:v11 userInfo:0];

  objc_exception_throw(v12);
}

- (PHChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = objc_alloc(MEMORY[0x1E695DF30]);
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  v14 = [v10 stringWithFormat:@"%@ must implement %@", v12, v13];
  v15 = [v8 initWithName:v9 reason:v14 userInfo:0];

  objc_exception_throw(v15);
}

- (NSString)uuid
{
  helper = [(PHChangeRequest *)self helper];
  uuid = [helper uuid];

  return uuid;
}

- (BOOL)isMutated
{
  helper = [(PHChangeRequest *)self helper];
  isMutated = [helper isMutated];

  return isMutated;
}

- (id)initForNewObject
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (BOOL)isNewRequest
{
  helper = [(PHChangeRequest *)self helper];
  isNewRequest = [helper isNewRequest];

  return isNewRequest;
}

- (void)performConcurrentWork
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E695DF30]);
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"%@ must implement %@", v9, v10];
  v12 = [v5 initWithName:v6 reason:v11 userInfo:0];

  v13 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v14 = [v12 description];
    *buf = 136315394;
    v17 = "[PHChangeRequest createManagedObjectForInsertIntoPhotoLibrary:error:]";
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_FAULT, "Exception in %s: %{public}@", buf, 0x16u);
  }

  return 0;
}

- (PHChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v11 = objc_alloc(MEMORY[0x1E695DF30]);
  v12 = *MEMORY[0x1E695D930];
  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromSelector(a2);
  v17 = [v13 stringWithFormat:@"%@ must implement %@", v15, v16];
  v18 = [v11 initWithName:v12 reason:v17 userInfo:0];

  objc_exception_throw(v18);
}

- (NSString)managedEntityName
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (PHChangeRequest)init
{
  v5.receiver = self;
  v5.super_class = PHChangeRequest;
  v2 = [(PHChangeRequest *)&v5 init];
  if (v2 && (PLIsAssetsd() & 1) == 0)
  {
    +[PHPhotoLibrary assertTransaction];
    photoLibraryForCurrentTransaction = [objc_opt_class() photoLibraryForCurrentTransaction];
    objc_storeWeak(&v2->_photoLibrary, photoLibraryForCurrentTransaction);
  }

  return v2;
}

+ (id)sanitizedFailureWithError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:*MEMORY[0x1E69BFF48]];

    v7 = v4;
    if (v6)
    {
      v7 = PHErrorFromPLError(v4);
    }

    domain2 = [v7 domain];
    v9 = [domain2 isEqualToString:*MEMORY[0x1E69BECB0]];

    if (v9)
    {
      v10 = [MEMORY[0x1E696ABC0] ph_genericErrorWithUnderlyingError:v4 localizedDescription:@"Shared Album change failed"];

      v7 = v10;
    }

    domain3 = [v7 domain];
    v12 = [domain3 isEqualToString:@"PHPhotosErrorDomain"];

    if (v12)
    {
      v13 = MEMORY[0x1E696ABC0];
      code = [v7 code];
      userInfo = [v7 userInfo];
      v16 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:code userInfo:userInfo];
    }

    else
    {
      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v4;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Failed to santize unexpected error from change processing: %@", buf, 0xCu);
      }

      v21 = MEMORY[0x1E696ABC0];
      localizedDescription = [v4 localizedDescription];
      v16 = [v21 ph_genericErrorWithLocalizedDescription:{@"Changes failed with error %@", localizedDescription}];
    }
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Unexpected failure with nil error";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];

    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_FAULT, "Unexpected failure with nil error", buf, 2u);
    }
  }

  v23 = [MEMORY[0x1E69BF2D0] failureWithError:v16];

  return v23;
}

@end