@interface PHChangeRequestHelper
+ (id)changeRequestForObject:(id)a3;
+ (id)changeRequestWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4;
- (BOOL)getCloudGUIDIfReserved:(id *)a3 entityName:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (NSString)clientBundleIdentifier;
- (PHChangeRequest)changeRequest;
- (PHChangeRequestHelper)init;
- (PHChangeRequestHelper)initWithCoder:(id)a3;
- (PHChangeRequestHelper)initWithUUID:(id)a3 objectID:(id)a4 changeRequest:(id)a5;
- (PHChangeRequestHelper)initWithUUID:(id)a3 objectID:(id)a4 isNew:(BOOL)a5 changeRequest:(id)a6;
- (PHChangeRequestHelper)initWithXPCDict:(id)a3 changeRequest:(id)a4 request:(id)a5 clientAuthorization:(id)a6;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)description;
- (id)initForNewObjectWithUUID:(id)a3 changeRequest:(id)a4;
- (id)placeholderForCreatedObjectWithClass:(Class)a3 changeRequest:(id)a4;
- (id)validateMutationsToManagedObject:(id)a3;
- (void)didMutate;
- (void)encodeToXPCDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)overrideNewObjectUUIDForCrashRecovery:(id)a3;
@end

@implementation PHChangeRequestHelper

- (PHChangeRequest)changeRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_changeRequest);

  return WeakRetained;
}

- (PHChangeRequestHelper)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = PHChangeRequestHelper;
  v5 = [(PHChangeRequestHelper *)&v48 init];
  if (v5)
  {
    v6 = v4;
    if (v6)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v42 = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertRespondsToSelector(id  _Nullable __strong, SEL _Nonnull)"}];
        v44 = NSStringFromSelector(sel_userInfo);
        [v42 handleFailureInFunction:v43 file:@"PLHelperExtension.h" lineNumber:91 description:{@"Object does not respond to selector %@: %@", v44, v6}];
      }

      v7 = v6;
    }

    v47 = v4;

    v46 = [v6 userInfo];
    v8 = [v46 persistentStoreCoordinator];
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

    v4 = v47;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = [(PHChangeRequestHelper *)self uuid];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uuid"];
  [v22 encodeObject:v4 forKey:v5];

  v6 = [(PHChangeRequestHelper *)self changeRequest];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"className"];
  [v22 encodeObject:v8 forKey:v9];

  v10 = [(PHChangeRequestHelper *)self mutations];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mutations"];
  [v22 encodeObject:v10 forKey:v11];

  v12 = [(PHChangeRequestHelper *)self nilMutations];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nilMutations"];
  [v22 encodeObject:v12 forKey:v13];

  v14 = [(PHChangeRequestHelper *)self isNewRequest];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"isNewRequest"];
  [v22 encodeBool:v14 forKey:v15];

  v16 = [(PHChangeRequestHelper *)self objectID];

  if (v16)
  {
    v17 = [(PHChangeRequestHelper *)self objectID];
    v18 = PLDataFromManagedObjectID();
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectID"];
    [v22 encodeObject:v18 forKey:v19];
  }

  v20 = [(PHChangeRequestHelper *)self creationOptions];

  if (v20)
  {
    v21 = [(PHChangeRequestHelper *)self creationOptions];
    [v22 encodeObject:v21 forKey:@"creationOptions"];
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

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  [(PHClientLinkedAgainst *)self->_clientLinkedAgainst encodeToXPCDict:xdict];
  v4 = [(PHChangeRequestHelper *)self uuid];
  PLXPCDictionarySetString();

  v5 = [(PHChangeRequestHelper *)self changeRequest];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  PLXPCDictionarySetString();

  v8 = [(PHChangeRequestHelper *)self objectID];
  PLXPCDictionarySetManagedObjectID();

  v9 = [(PHChangeRequestHelper *)self mutations];
  PLXPCDictionarySetDictionary();

  v10 = [(PHChangeRequestHelper *)self nilMutations];
  v11 = [v10 allObjects];
  PLXPCDictionarySetArray();

  xpc_dictionary_set_BOOL(xdict, "isNewRequest", [(PHChangeRequestHelper *)self isNewRequest]);
  if (self->_creationOptions)
  {
    v12 = [(PHChangeRequestHelper *)self creationOptions];
    [v12 encodeToXPCDict:xdict];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
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
    v9 = v6;
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
  if (a4 && (v28[3] & 1) == 0)
  {
    *a4 = v22[5];
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

- (id)validateMutationsToManagedObject:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9146;
  v27 = __Block_byref_object_dispose__9147;
  v5 = MEMORY[0x1E69BF2D0];
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 successWithResult:v6];

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
    v9 = v4;
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

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v5 = [(PHChangeRequestHelper *)self validateMutationsToManagedObject:a3];
  v6 = [v5 resultWithError:a4];
  LOBYTE(a4) = v6 != 0;

  return a4;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequestHelper *)self changeRequest];
  v11 = [v10 managedEntityName];
  v12 = [v8 managedObjectContext];
  v13 = PLSafeEntityForNameInManagedObjectContext();
  v14 = 0;

  if (!v13)
  {
    if (!a5)
    {
      v20 = 0;
      goto LABEL_14;
    }

    v21 = v14;
LABEL_12:
    v28 = v21;
    v20 = 0;
    *a5 = v21;
    goto LABEL_14;
  }

  v15 = [v8 entity];
  v16 = [v15 isKindOfEntity:v13];

  if (!v16)
  {
    v22 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v23 = MEMORY[0x1E696AEC0];
    v24 = [v13 name];
    v25 = [v23 stringWithFormat:@"Invalid entity %@", v24];
    v31 = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [v22 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v26];

    v14 = v26;
LABEL_10:

    if (!a5)
    {
      v20 = 0;
      v14 = v21;
      goto LABEL_14;
    }

    v14 = v21;
    goto LABEL_12;
  }

  v17 = [v8 entity];
  v18 = [v17 attributesByName];
  v19 = [v18 objectForKey:v9];

  if (!v19)
  {
    v27 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", v9];
    v33[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v27 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v25];
    goto LABEL_10;
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequestHelper *)self changeRequest];
  v8 = [v7 managedEntityName];
  v9 = [v6 managedObjectContext];

  v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();
  v11 = 0;

  if (a4 && !v10)
  {
    v12 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v13];
  }

  return v10;
}

- (BOOL)getCloudGUIDIfReserved:(id *)a3 entityName:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(PHChangeRequestHelper *)self creationOptions];
  v13 = [v12 reservedCloudIdentifier];

  if (v13)
  {
    v42 = a6;
    v14 = [v13 identifierCode];
    v15 = [PHPhotoLibrary PHObjectClassForIdentifierCode:v14];

    v16 = [(objc_class *)v15 managedEntityName];
    if (v16)
    {
      v17 = MEMORY[0x1E695D5B8];
      v18 = [v11 managedObjectContext];
      v19 = [v17 entityForName:v16 inManagedObjectContext:v18];
    }

    else
    {
      v19 = 0;
    }

    v21 = MEMORY[0x1E695D5B8];
    v43 = v11;
    v22 = [v11 managedObjectContext];
    v23 = [v21 entityForName:v10 inManagedObjectContext:v22];

    v24 = [v13 localCloudIdentifier];
    v25 = v10;
    v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v24];
    v45 = v23;
    v46 = v19;
    v44 = v25;
    if ([v19 isKindOfEntity:v23])
    {
      v41 = a3;
      v27 = [(PHChangeRequestHelper *)self request];
      v28 = [v27 libraryServicesManager];
      v29 = [v28 cloudIdentifierReservationSupport];

      v30 = [v27 clientBundleID];
      v47 = 0;
      v31 = v26;
      v32 = [v29 takeReservedCloudIdentifierWithEntityName:v16 uuid:v26 clientBundleIdentifier:v30 error:&v47];
      v33 = v47;

      if (v32)
      {
        v34 = v24;
        *v41 = v24;
        v20 = 1;
LABEL_13:
        v10 = v44;

        v11 = v43;
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

    if (v42)
    {
      v39 = v33;
      v20 = 0;
      *v42 = v33;
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
  v3 = [(PLClientAuthorization *)self->_clientAuthorization trustedCallerBundleID];
  if ([v3 length])
  {
LABEL_2:

    goto LABEL_3;
  }

  HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();

  if (HasInternalDiagnostics)
  {
    v3 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v7 = [(PLClientAuthorization *)self->_clientAuthorization clientProcessIdentifier];
      v8 = [(PHChangeRequestHelper *)self clientDisplayName];
      v9 = 134218242;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_FAULT, "Client has no bundle identifier. PID %ld, name %@", &v9, 0x16u);
    }

    goto LABEL_2;
  }

LABEL_3:
  v4 = [(PLClientAuthorization *)self->_clientAuthorization trustedCallerBundleID];

  return v4;
}

- (void)didMutate
{
  +[PHPhotoLibrary assertTransaction];
  if (!self->_isMutated)
  {
    v3 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    v4 = [(PHChangeRequestHelper *)self changeRequest];
    [v3 recordUpdateRequest:v4];

    self->_isMutated = 1;
  }
}

- (void)overrideNewObjectUUIDForCrashRecovery:(id)a3
{
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:208 description:{@"%@ can only be called from assetsd", v8}];
  }

  uuid = self->_uuid;
  self->_uuid = v5;
}

- (id)placeholderForCreatedObjectWithClass:(Class)a3 changeRequest:(id)a4
{
  v6 = a4;
  +[PHPhotoLibrary assertTransaction];
  v7 = [v6 isNewRequest];

  if (v7)
  {
    v8 = [(PHChangeRequestHelper *)self uuid];

    if (!v8)
    {
      v9 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 UUIDString];
      uuid = self->_uuid;
      self->_uuid = v10;
    }

    v12 = [(PHChangeRequestHelper *)self uuid];
    v13 = [(objc_class *)a3 localIdentifierWithUUID:v12];

    v14 = [[PHObjectPlaceholder alloc] initWithLocalIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 type];
  v6 = v5;
  if (a4 && v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Change must be performed within the sharedPhotoLibrary";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v8];
  }

  return v6 == 0;
}

- (PHChangeRequestHelper)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PHChangeRequestHelper init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

- (PHChangeRequestHelper)initWithXPCDict:(id)a3 changeRequest:(id)a4 request:(id)a5 clientAuthorization:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v37 = a6;
  if (!v12)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:144 description:@"Must provide a change request"];
  }

  v14 = [(PHPerformChangesRequest *)v13 persistentStoreCoordinator];
  v15 = xpc_dictionary_get_value(v11, "objectID");
  if (v15)
  {
    v16 = PLManagedObjectIDFromXPCValue();
  }

  else
  {
    v16 = 0;
  }

  v17 = xpc_dictionary_get_BOOL(v11, "isNewRequest");
  v18 = PLStringFromXPCDictionary();
  v19 = [(PHChangeRequestHelper *)self initWithUUID:v18 objectID:v16 isNew:v17 changeRequest:v12];

  if (v19)
  {
    v19->_request = v13;
    objc_storeStrong(&v19->_clientAuthorization, a6);
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
    v27 = [[PHClientLinkedAgainst alloc] initWithXPCDict:v11];
    clientLinkedAgainst = v19->_clientLinkedAgainst;
    v19->_clientLinkedAgainst = v27;

    if (!v16)
    {
      [(PHPerformChangesRequest *)v13 recordInsertRequest:v12];
    }

    v29 = [(PHChangeRequestHelper *)v19 uuid];

    if (!v29)
    {
      v30 = [MEMORY[0x1E696AFB0] UUID];
      v31 = [v30 UUIDString];
      uuid = v19->_uuid;
      v19->_uuid = v31;
    }

    if ([(NSMutableDictionary *)v19->_mutations count]|| [(NSMutableSet *)v19->_nilMutations count])
    {
      [(PHPerformChangesRequest *)v13 recordUpdateRequest:v12];
      v19->_isMutated = 1;
    }

    v33 = [[PHCreationRequestOptions alloc] initWithXPCDict:v11];
    creationOptions = v19->_creationOptions;
    v19->_creationOptions = v33;
  }

  return v19;
}

- (id)initForNewObjectWithUUID:(id)a3 changeRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  +[PHPhotoLibrary assertTransaction];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:130 description:@"Must provide a change request"];

  if (!v7)
  {
LABEL_3:
    v7 = [MEMORY[0x1E696AFB0] UUID];
  }

LABEL_4:
  v9 = [v7 UUIDString];
  v10 = [(PHChangeRequestHelper *)self initWithUUID:v9 objectID:0 isNew:1 changeRequest:v8];

  if (v10)
  {
    v11 = objc_alloc_init(PHClientLinkedAgainst);
    clientLinkedAgainst = v10->_clientLinkedAgainst;
    v10->_clientLinkedAgainst = v11;
  }

  return v10;
}

- (PHChangeRequestHelper)initWithUUID:(id)a3 objectID:(id)a4 changeRequest:(id)a5
{
  v5 = [(PHChangeRequestHelper *)self initWithUUID:a3 objectID:a4 isNew:0 changeRequest:a5];
  if (v5)
  {
    v6 = objc_alloc_init(PHClientLinkedAgainst);
    clientLinkedAgainst = v5->_clientLinkedAgainst;
    v5->_clientLinkedAgainst = v6;
  }

  return v5;
}

- (PHChangeRequestHelper)initWithUUID:(id)a3 objectID:(id)a4 isNew:(BOOL)a5 changeRequest:(id)a6
{
  v7 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  +[PHPhotoLibrary assertTransaction];
  if (!v14)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PHChangeRequestHelper.m" lineNumber:81 description:@"Must provide a change request"];
  }

  v31.receiver = self;
  v31.super_class = PHChangeRequestHelper;
  v15 = [(PHChangeRequestHelper *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(&v16->_objectID, a4);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    mutations = v16->_mutations;
    v16->_mutations = v17;

    v19 = [MEMORY[0x1E695DFA8] set];
    nilMutations = v16->_nilMutations;
    v16->_nilMutations = v19;

    objc_storeWeak(&v16->_changeRequest, v14);
    v21 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    if (v21 || (PLIsAssetsd() & 1) != 0)
    {
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:v16 file:@"PHChangeRequestHelper.m" lineNumber:90 description:@"must be in a transaction PHPhotoLibrary or be running in assetsd"];

      if (v13)
      {
        goto LABEL_11;
      }
    }

    if (!v7)
    {
      v22 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v33 = v23;
        v34 = 2112;
        v35 = v14;
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
    if (!v13 || !v7)
    {
      if (v12)
      {
        [v21 setChangeRequest:v14 forUUID:v12];
      }

      if (!v13)
      {
        [v21 recordInsertRequest:v14];
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
      v35 = v14;
      v36 = 2114;
      v37 = v13;
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

+ (id)changeRequestWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = PLStringFromXPCDictionary();
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHChangeRequestHelper.m" lineNumber:415 description:{@"encoded missing 'className' field: %@", v9}];
  }

  v14 = [[v13 alloc] initWithXPCDict:v9 request:v11 clientAuthorization:v10];

  return v14;
}

+ (id)changeRequestForObject:(id)a3
{
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [v5 photoLibrary];
  v8 = [v7 changeRequestForUUID:v6];
  if (!v8)
  {
    v9 = [v5 changeRequestClass];
    if (v9)
    {
      v10 = [v9 alloc];
      v11 = [v5 objectID];
      v8 = [v10 initWithUUID:v6 objectID:v11];
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:a1 file:@"PHChangeRequestHelper.m" lineNumber:69 description:@"Unsupported change request type!"];
      v8 = 0;
    }
  }

  return v8;
}

@end