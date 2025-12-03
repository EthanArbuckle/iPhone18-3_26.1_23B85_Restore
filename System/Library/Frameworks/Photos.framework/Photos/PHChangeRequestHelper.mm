@interface PHChangeRequestHelper
+ (id)changeRequestForObject:(id)object;
+ (id)changeRequestWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object error:(id *)error;
- (BOOL)getCloudGUIDIfReserved:(id *)reserved entityName:(id)name photoLibrary:(id)library error:(id *)error;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (NSString)clientBundleIdentifier;
- (PHChangeRequest)changeRequest;
- (PHChangeRequestHelper)init;
- (PHChangeRequestHelper)initWithCoder:(id)coder;
- (PHChangeRequestHelper)initWithUUID:(id)d objectID:(id)iD changeRequest:(id)request;
- (PHChangeRequestHelper)initWithUUID:(id)d objectID:(id)iD isNew:(BOOL)new changeRequest:(id)request;
- (PHChangeRequestHelper)initWithXPCDict:(id)dict changeRequest:(id)request request:(id)a5 clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)description;
- (id)initForNewObjectWithUUID:(id)d changeRequest:(id)request;
- (id)placeholderForCreatedObjectWithClass:(Class)class changeRequest:(id)request;
- (id)validateMutationsToManagedObject:(id)object;
- (void)didMutate;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
- (void)overrideNewObjectUUIDForCrashRecovery:(id)recovery;
@end

@implementation PHChangeRequestHelper

- (PHChangeRequest)changeRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_changeRequest);

  return WeakRetained;
}

- (PHChangeRequestHelper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = PHChangeRequestHelper;
  v5 = [(PHChangeRequestHelper *)&v48 init];
  if (v5)
  {
    v6 = coderCopy;
    if (v6)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertRespondsToSelector(id  _Nullable __strong, SEL _Nonnull)"}];
        v44 = NSStringFromSelector(sel_userInfo);
        [currentHandler handleFailureInFunction:v43 file:@"PLHelperExtension.h" lineNumber:91 description:{@"Object does not respond to selector %@: %@", v44, v6}];
      }

      v7 = v6;
    }

    v47 = coderCopy;

    userInfo = [v6 userInfo];
    persistentStoreCoordinator = [userInfo persistentStoreCoordinator];
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uuid"];
    v11 = [v6 decodeObjectOfClass:v9 forKey:v10];
    uuid = v5->_uuid;
    v5->_uuid = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isNewRequest"];
    v5->_isNewRequest = [v6 decodeBoolForKey:v13];

    v14 = objc_opt_class();
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectID"];
    v16 = [v6 decodeObjectOfClass:v14 forKey:v15];

    if (v16)
    {
      v17 = PLManagedObjectIDFromData();
      objectID = v5->_objectID;
      v5->_objectID = v17;
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v45 = v16;
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v19 setWithObjects:{v20, v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mutations"];
    v27 = [v6 decodeObjectOfClasses:v25 forKey:v26];
    mutations = v5->_mutations;
    v5->_mutations = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v29 setWithObjects:{v30, v31, v32, v33, v34, objc_opt_class(), 0}];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nilMutations"];
    v37 = [v6 decodeObjectOfClasses:v35 forKey:v36];
    nilMutations = v5->_nilMutations;
    v5->_nilMutations = v37;

    v39 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"creationOptions"];
    creationOptions = v5->_creationOptions;
    v5->_creationOptions = v39;

    coderCopy = v47;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(PHChangeRequestHelper *)self uuid];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uuid"];
  [coderCopy encodeObject:uuid forKey:v5];

  changeRequest = [(PHChangeRequestHelper *)self changeRequest];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"className"];
  [coderCopy encodeObject:v8 forKey:v9];

  mutations = [(PHChangeRequestHelper *)self mutations];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mutations"];
  [coderCopy encodeObject:mutations forKey:v11];

  nilMutations = [(PHChangeRequestHelper *)self nilMutations];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nilMutations"];
  [coderCopy encodeObject:nilMutations forKey:v13];

  isNewRequest = [(PHChangeRequestHelper *)self isNewRequest];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isNewRequest"];
  [coderCopy encodeBool:isNewRequest forKey:v15];

  objectID = [(PHChangeRequestHelper *)self objectID];

  if (objectID)
  {
    objectID2 = [(PHChangeRequestHelper *)self objectID];
    v18 = PLDataFromManagedObjectID();
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectID"];
    [coderCopy encodeObject:v18 forKey:v19];
  }

  creationOptions = [(PHChangeRequestHelper *)self creationOptions];

  if (creationOptions)
  {
    creationOptions2 = [(PHChangeRequestHelper *)self creationOptions];
    [coderCopy encodeObject:creationOptions2 forKey:@"creationOptions"];
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHChangeRequestHelper;
  v3 = [(PHChangeRequestHelper *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" _uuid %@", self->_uuid];
  [v4 appendFormat:@" _isMutated %d", self->_isMutated];
  [v4 appendFormat:@" _isNewRequest %d", self->_isNewRequest];
  [v4 appendFormat:@" _mutations %@", self->_mutations];
  [v4 appendFormat:@" _nilMutations %@", self->_nilMutations];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  [(PHClientLinkedAgainst *)self->_clientLinkedAgainst encodeToXPCDict:xdict];
  uuid = [(PHChangeRequestHelper *)self uuid];
  PLXPCDictionarySetString();

  changeRequest = [(PHChangeRequestHelper *)self changeRequest];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  PLXPCDictionarySetString();

  objectID = [(PHChangeRequestHelper *)self objectID];
  PLXPCDictionarySetManagedObjectID();

  mutations = [(PHChangeRequestHelper *)self mutations];
  PLXPCDictionarySetDictionary();

  nilMutations = [(PHChangeRequestHelper *)self nilMutations];
  allObjects = [nilMutations allObjects];
  PLXPCDictionarySetArray();

  xpc_dictionary_set_BOOL(xdict, "isNewRequest", [(PHChangeRequestHelper *)self isNewRequest]);
  if (self->_creationOptions)
  {
    creationOptions = [(PHChangeRequestHelper *)self creationOptions];
    [creationOptions encodeToXPCDict:xdict];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)object error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = objectCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9146;
  v25 = __Block_byref_object_dispose__9147;
  v26 = 0;
  if (self->_isMutated)
  {
    mutations = self->_mutations;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__PHChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke;
    v17[3] = &unk_1E75A4998;
    v17[4] = self;
    v9 = objectCopy;
    v18 = v9;
    v19 = &v21;
    v20 = &v27;
    [(NSMutableDictionary *)mutations enumerateKeysAndObjectsUsingBlock:v17];
    nilMutations = self->_nilMutations;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__PHChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke_2;
    v13[3] = &unk_1E75A49C0;
    v13[4] = self;
    v14 = v9;
    v15 = &v21;
    v16 = &v27;
    [(NSMutableSet *)nilMutations enumerateObjectsUsingBlock:v13];
  }

  v11 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v11 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v11 & 1;
}

void __61__PHChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) changeRequest];
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  v12 = [v9 allowMutationToManagedObject:v10 propertyKey:v7 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (v12)
  {
    [*(a1 + 40) setValue:v8 forKey:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __61__PHChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) changeRequest];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v6 allowMutationToManagedObject:v7 propertyKey:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9)
  {
    [*(a1 + 40) setValue:0 forKey:v5];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (id)validateMutationsToManagedObject:(id)object
{
  objectCopy = object;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9146;
  v27 = __Block_byref_object_dispose__9147;
  v5 = MEMORY[0x1E69BF2D0];
  null = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 successWithResult:null];

  v28 = v7;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__9146;
  v21[4] = __Block_byref_object_dispose__9147;
  v22 = 0;
  if (self->_isMutated)
  {
    mutations = self->_mutations;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PHChangeRequestHelper_validateMutationsToManagedObject___block_invoke;
    v17[3] = &unk_1E75A4998;
    v17[4] = self;
    v9 = objectCopy;
    v18 = v9;
    v19 = v21;
    v20 = &v23;
    [(NSMutableDictionary *)mutations enumerateKeysAndObjectsUsingBlock:v17];
    nilMutations = self->_nilMutations;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PHChangeRequestHelper_validateMutationsToManagedObject___block_invoke_2;
    v13[3] = &unk_1E75A49C0;
    v13[4] = self;
    v14 = v9;
    v15 = v21;
    v16 = &v23;
    [(NSMutableSet *)nilMutations enumerateObjectsUsingBlock:v13];
  }

  v11 = v24[5];
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

void __58__PHChangeRequestHelper_validateMutationsToManagedObject___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a2;
  v8 = [v6 changeRequest];
  v9 = a1[5];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [v8 allowMutationToManagedObject:v9 propertyKey:v7 error:&obj];

  objc_storeStrong((v10 + 40), obj);
  if ((v11 & 1) == 0)
  {
    v12 = [PHChangeRequest sanitizedFailureWithError:*(*(a1[6] + 8) + 40)];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

void __58__PHChangeRequestHelper_validateMutationsToManagedObject___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 changeRequest];
  v8 = a1[5];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 allowMutationToManagedObject:v8 propertyKey:v6 error:&obj];

  objc_storeStrong((v9 + 40), obj);
  if ((v10 & 1) == 0)
  {
    v11 = [PHChangeRequest sanitizedFailureWithError:*(*(a1[6] + 8) + 40)];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a3 = 1;
  }
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v5 = [(PHChangeRequestHelper *)self validateMutationsToManagedObject:object];
  v6 = [v5 resultWithError:error];
  LOBYTE(error) = v6 != 0;

  return error;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  changeRequest = [(PHChangeRequestHelper *)self changeRequest];
  managedEntityName = [changeRequest managedEntityName];
  managedObjectContext = [objectCopy managedObjectContext];
  v13 = PLSafeEntityForNameInManagedObjectContext();
  v14 = 0;

  if (!v13)
  {
    if (!error)
    {
      v20 = 0;
      goto LABEL_14;
    }

    v21 = v14;
LABEL_12:
    v28 = v21;
    v20 = 0;
    *error = v21;
    goto LABEL_14;
  }

  entity = [objectCopy entity];
  v16 = [entity isKindOfEntity:v13];

  if (!v16)
  {
    v22 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v23 = MEMORY[0x1E696AEC0];
    name = [v13 name];
    v25 = [v23 stringWithFormat:@"Invalid entity %@", name];
    v31 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [v22 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v26];

    v14 = v26;
LABEL_10:

    if (!error)
    {
      v20 = 0;
      v14 = v21;
      goto LABEL_14;
    }

    v14 = v21;
    goto LABEL_12;
  }

  entity2 = [objectCopy entity];
  attributesByName = [entity2 attributesByName];
  v19 = [attributesByName objectForKey:keyCopy];

  if (!v19)
  {
    v27 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", keyCopy];
    v33[0] = name;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v27 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v25];
    goto LABEL_10;
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  changeRequest = [(PHChangeRequestHelper *)self changeRequest];
  managedEntityName = [changeRequest managedEntityName];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();
  v11 = 0;

  if (error && !v10)
  {
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v13];
  }

  return v10;
}

- (BOOL)getCloudGUIDIfReserved:(id *)reserved entityName:(id)name photoLibrary:(id)library error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  libraryCopy = library;
  creationOptions = [(PHChangeRequestHelper *)self creationOptions];
  reservedCloudIdentifier = [creationOptions reservedCloudIdentifier];

  if (reservedCloudIdentifier)
  {
    errorCopy = error;
    identifierCode = [reservedCloudIdentifier identifierCode];
    v15 = [PHPhotoLibrary PHObjectClassForIdentifierCode:identifierCode];

    managedEntityName = [(objc_class *)v15 managedEntityName];
    if (managedEntityName)
    {
      v17 = MEMORY[0x1E695D5B8];
      managedObjectContext = [libraryCopy managedObjectContext];
      v19 = [v17 entityForName:managedEntityName inManagedObjectContext:managedObjectContext];
    }

    else
    {
      v19 = 0;
    }

    v21 = MEMORY[0x1E695D5B8];
    v43 = libraryCopy;
    managedObjectContext2 = [libraryCopy managedObjectContext];
    v23 = [v21 entityForName:nameCopy inManagedObjectContext:managedObjectContext2];

    localCloudIdentifier = [reservedCloudIdentifier localCloudIdentifier];
    v25 = nameCopy;
    v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:localCloudIdentifier];
    v45 = v23;
    v46 = v19;
    v44 = v25;
    if ([v19 isKindOfEntity:v23])
    {
      reservedCopy = reserved;
      request = [(PHChangeRequestHelper *)self request];
      libraryServicesManager = [request libraryServicesManager];
      cloudIdentifierReservationSupport = [libraryServicesManager cloudIdentifierReservationSupport];

      clientBundleID = [request clientBundleID];
      v47 = 0;
      v31 = v26;
      v32 = [cloudIdentifierReservationSupport takeReservedCloudIdentifierWithEntityName:managedEntityName uuid:v26 clientBundleIdentifier:clientBundleID error:&v47];
      v33 = v47;

      if (v32)
      {
        v34 = localCloudIdentifier;
        *reservedCopy = localCloudIdentifier;
        v20 = 1;
LABEL_13:
        nameCopy = v44;

        libraryCopy = v43;
        goto LABEL_14;
      }
    }

    else
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E69BFF48];
      v48 = *MEMORY[0x1E696A278];
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot assign %@ based cloud identifier to %@", v15, +[PHPhotoLibrary PHObjectClassForEntityName:](PHPhotoLibrary, "PHObjectClassForEntityName:", v25)];
      v49[0] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v33 = [v35 errorWithDomain:v36 code:46201 userInfo:v38];

      v31 = v26;
    }

    if (errorCopy)
    {
      v39 = v33;
      v20 = 0;
      *errorCopy = v33;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_13;
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (NSString)clientBundleIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  trustedCallerBundleID = [(PLClientAuthorization *)self->_clientAuthorization trustedCallerBundleID];
  if ([trustedCallerBundleID length])
  {
LABEL_2:

    goto LABEL_3;
  }

  HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();

  if (HasInternalDiagnostics)
  {
    trustedCallerBundleID = PLPhotoKitGetLog();
    if (os_log_type_enabled(trustedCallerBundleID, OS_LOG_TYPE_FAULT))
    {
      clientProcessIdentifier = [(PLClientAuthorization *)self->_clientAuthorization clientProcessIdentifier];
      clientDisplayName = [(PHChangeRequestHelper *)self clientDisplayName];
      v9 = 134218242;
      v10 = clientProcessIdentifier;
      v11 = 2112;
      v12 = clientDisplayName;
      _os_log_impl(&dword_19C86F000, trustedCallerBundleID, OS_LOG_TYPE_FAULT, "Client has no bundle identifier. PID %ld, name %@", &v9, 0x16u);
    }

    goto LABEL_2;
  }

LABEL_3:
  trustedCallerBundleID2 = [(PLClientAuthorization *)self->_clientAuthorization trustedCallerBundleID];

  return trustedCallerBundleID2;
}

- (void)didMutate
{
  +[PHPhotoLibrary assertTransaction];
  if (!self->_isMutated)
  {
    v3 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    changeRequest = [(PHChangeRequestHelper *)self changeRequest];
    [v3 recordUpdateRequest:changeRequest];

    self->_isMutated = 1;
  }
}

- (void)overrideNewObjectUUIDForCrashRecovery:(id)recovery
{
  recoveryCopy = recovery;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:208 description:{@"%@ can only be called from assetsd", v8}];
  }

  uuid = self->_uuid;
  self->_uuid = recoveryCopy;
}

- (id)placeholderForCreatedObjectWithClass:(Class)class changeRequest:(id)request
{
  requestCopy = request;
  +[PHPhotoLibrary assertTransaction];
  isNewRequest = [requestCopy isNewRequest];

  if (isNewRequest)
  {
    uuid = [(PHChangeRequestHelper *)self uuid];

    if (!uuid)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      uuid = self->_uuid;
      self->_uuid = uUIDString;
    }

    uuid2 = [(PHChangeRequestHelper *)self uuid];
    v13 = [(objc_class *)class localIdentifierWithUUID:uuid2];

    v14 = [[PHObjectPlaceholder alloc] initWithLocalIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  type = [check type];
  v6 = type;
  if (error && type)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedPhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 0;
}

- (PHChangeRequestHelper)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHChangeRequestHelper init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHChangeRequestHelper)initWithXPCDict:(id)dict changeRequest:(id)request request:(id)a5 clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  v13 = a5;
  authorizationCopy = authorization;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:144 description:@"Must provide a change request"];
  }

  persistentStoreCoordinator = [(PHPerformChangesRequest *)v13 persistentStoreCoordinator];
  v15 = xpc_dictionary_get_value(dictCopy, "objectID");
  if (v15)
  {
    v16 = PLManagedObjectIDFromXPCValue();
  }

  else
  {
    v16 = 0;
  }

  v17 = xpc_dictionary_get_BOOL(dictCopy, "isNewRequest");
  v18 = PLStringFromXPCDictionary();
  v19 = [(PHChangeRequestHelper *)self initWithUUID:v18 objectID:v16 isNew:v17 changeRequest:requestCopy];

  if (v19)
  {
    v19->_request = v13;
    objc_storeStrong(&v19->_clientAuthorization, authorization);
    v20 = PLDictionaryFromXPCDictionary();
    v21 = [v20 mutableCopy];
    mutations = v19->_mutations;
    v19->_mutations = v21;

    v23 = MEMORY[0x1E695DFA8];
    v24 = PLArrayFromXPCDictionary();
    v25 = [v23 setWithArray:v24];
    nilMutations = v19->_nilMutations;
    v19->_nilMutations = v25;

    v19->_isNewRequest = v17;
    v27 = [[PHClientLinkedAgainst alloc] initWithXPCDict:dictCopy];
    clientLinkedAgainst = v19->_clientLinkedAgainst;
    v19->_clientLinkedAgainst = v27;

    if (!v16)
    {
      [(PHPerformChangesRequest *)v13 recordInsertRequest:requestCopy];
    }

    uuid = [(PHChangeRequestHelper *)v19 uuid];

    if (!uuid)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      uuid = v19->_uuid;
      v19->_uuid = uUIDString;
    }

    if ([(NSMutableDictionary *)v19->_mutations count]|| [(NSMutableSet *)v19->_nilMutations count])
    {
      [(PHPerformChangesRequest *)v13 recordUpdateRequest:requestCopy];
      v19->_isMutated = 1;
    }

    v33 = [[PHCreationRequestOptions alloc] initWithXPCDict:dictCopy];
    creationOptions = v19->_creationOptions;
    v19->_creationOptions = v33;
  }

  return v19;
}

- (id)initForNewObjectWithUUID:(id)d changeRequest:(id)request
{
  dCopy = d;
  requestCopy = request;
  +[PHPhotoLibrary assertTransaction];
  if (requestCopy)
  {
    if (dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:130 description:@"Must provide a change request"];

  if (!dCopy)
  {
LABEL_3:
    dCopy = [MEMORY[0x1E696AFB0] UUID];
  }

LABEL_4:
  uUIDString = [dCopy UUIDString];
  v10 = [(PHChangeRequestHelper *)self initWithUUID:uUIDString objectID:0 isNew:1 changeRequest:requestCopy];

  if (v10)
  {
    v11 = objc_alloc_init(PHClientLinkedAgainst);
    clientLinkedAgainst = v10->_clientLinkedAgainst;
    v10->_clientLinkedAgainst = v11;
  }

  return v10;
}

- (PHChangeRequestHelper)initWithUUID:(id)d objectID:(id)iD changeRequest:(id)request
{
  v5 = [(PHChangeRequestHelper *)self initWithUUID:d objectID:iD isNew:0 changeRequest:request];
  if (v5)
  {
    v6 = objc_alloc_init(PHClientLinkedAgainst);
    clientLinkedAgainst = v5->_clientLinkedAgainst;
    v5->_clientLinkedAgainst = v6;
  }

  return v5;
}

- (PHChangeRequestHelper)initWithUUID:(id)d objectID:(id)iD isNew:(BOOL)new changeRequest:(id)request
{
  newCopy = new;
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  requestCopy = request;
  +[PHPhotoLibrary assertTransaction];
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:81 description:@"Must provide a change request"];
  }

  v31.receiver = self;
  v31.super_class = PHChangeRequestHelper;
  v15 = [(PHChangeRequestHelper *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_objectID, iD);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mutations = v16->_mutations;
    v16->_mutations = dictionary;

    v19 = [MEMORY[0x1E695DFA8] set];
    nilMutations = v16->_nilMutations;
    v16->_nilMutations = v19;

    objc_storeWeak(&v16->_changeRequest, requestCopy);
    v21 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    if (v21 || (PLIsAssetsd() & 1) != 0)
    {
      if (iDCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v16 file:@"PHChangeRequestHelper.m" lineNumber:90 description:@"must be in a transaction PHPhotoLibrary or be running in assetsd"];

      if (iDCopy)
      {
        goto LABEL_11;
      }
    }

    if (!newCopy)
    {
      v22 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v33 = v23;
        v34 = 2112;
        v35 = requestCopy;
        v24 = "Invalid change request %{public}@ %@ with isNew = NO and objectID = nil";
        v25 = v22;
        v26 = 22;
LABEL_15:
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_FAULT, v24, buf, v26);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

LABEL_11:
    if (!iDCopy || !newCopy)
    {
      if (dCopy)
      {
        [v21 setChangeRequest:requestCopy forUUID:dCopy];
      }

      if (!iDCopy)
      {
        [v21 recordInsertRequest:requestCopy];
        *&v16->_isMutated = 257;
      }

      goto LABEL_17;
    }

    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v29 = objc_opt_class();
      *buf = 138543874;
      v33 = v29;
      v34 = 2112;
      v35 = requestCopy;
      v36 = 2114;
      v37 = iDCopy;
      v24 = "Invalid change request %{public}@ %@ with isNew = YES and objectID = %{public}@";
      v25 = v22;
      v26 = 32;
      goto LABEL_15;
    }

LABEL_16:

    v16 = 0;
LABEL_17:
  }

  return v16;
}

+ (id)changeRequestWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  authorizationCopy = authorization;
  requestCopy = request;
  v12 = PLStringFromXPCDictionary();
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:415 description:{@"encoded missing 'className' field: %@", dictCopy}];
  }

  v14 = [[v13 alloc] initWithXPCDict:dictCopy request:requestCopy clientAuthorization:authorizationCopy];

  return v14;
}

+ (id)changeRequestForObject:(id)object
{
  objectCopy = object;
  uuid = [objectCopy uuid];
  photoLibrary = [objectCopy photoLibrary];
  v8 = [photoLibrary changeRequestForUUID:uuid];
  if (!v8)
  {
    changeRequestClass = [objectCopy changeRequestClass];
    if (changeRequestClass)
    {
      v10 = [changeRequestClass alloc];
      objectID = [objectCopy objectID];
      v8 = [v10 initWithUUID:uuid objectID:objectID];
    }

    else
    {
      objectID = [MEMORY[0x1E696AAA8] currentHandler];
      [objectID handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:69 description:@"Unsupported change request type!"];
      v8 = 0;
    }
  }

  return v8;
}

@end