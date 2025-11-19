@interface PHAssetResourceUploadJobChangeRequest
+ (id)changeRequestForUploadJob:(id)a3;
+ (id)creationRequestForAssetResourceUploadJobWithDestination:(id)a3 resource:(id)a4;
+ (int64_t)_countOfCancellableAcknowledgeableJobsWithConfiguration:(id)a3 library:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (PHAssetResourceUploadJobChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHAssetResourceUploadJobChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)_getAcknowledgement;
- (id)_getConfigurationFromLibrary:(id)a3 error:(id *)a4;
- (id)_getState;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)lastModifiedDate;
- (int64_t)clientStatus;
- (int64_t)state;
- (signed)attemptCount;
- (void)_commonInitializer;
- (void)encodeToXPCDict:(id)a3;
- (void)retryWithDestination:(id)a3;
- (void)setAttemptCount:(signed __int16)a3;
- (void)setDestinationData:(id)a3;
- (void)setInternalResourceObjectID:(id)a3;
- (void)setLastModifiedDate:(id)a3;
- (void)setOnlyClientStatus:(int64_t)a3;
- (void)setOnlyState:(int64_t)a3;
- (void)setState:(int64_t)a3 clientStatus:(int64_t)a4;
- (void)setUploadJobConfiguration:(id)a3;
- (void)updateClientStatus:(int64_t)a3;
- (void)updateState:(int64_t)a3;
@end

@implementation PHAssetResourceUploadJobChangeRequest

- (void)setOnlyClientStatus:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"clientStatus"];
}

- (int64_t)clientStatus
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"clientStatus"];

  v6 = [v5 shortValue];
  return v6;
}

- (void)setOnlyState:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"state"];
}

- (int64_t)state
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"state"];

  v6 = [v5 shortValue];
  return v6;
}

- (void)setAttemptCount:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"attemptCount"];
}

- (signed)attemptCount
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"attemptCount"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setLastModifiedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"lastModifiedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"lastModifiedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"lastModifiedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"lastModifiedDate"];
  }
}

- (id)lastModifiedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lastModifiedDate"];

  return v5;
}

- (void)setState:(int64_t)a3 clientStatus:(int64_t)a4
{
  self->_shouldBypassValidateMutations = 1;
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyState:a3];
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyClientStatus:a4];
  v6 = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:v6];
}

- (void)updateClientStatus:(int64_t)a3
{
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyClientStatus:a3];
  v4 = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:v4];
}

- (void)updateState:(int64_t)a3
{
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyState:a3];
  v4 = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:v4];
}

- (void)setInternalResourceObjectID:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    internalResourceObjectIDHelper = self->_internalResourceObjectIDHelper;
    v7 = [v5 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)internalResourceObjectIDHelper setMutableObjectIDsAndUUIDs:v7];
  }
}

- (void)setUploadJobConfiguration:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v5];

  if (v6)
  {
    [(PHChangeRequest *)self didMutate];
    configurationHelper = self->_configurationHelper;
    v8 = [v6 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)configurationHelper setMutableObjectIDsAndUUIDs:v8];
  }
}

- (void)setDestinationData:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  v5 = [v4 copy];

  destinationData = self->_destinationData;
  self->_destinationData = v5;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE270];
  v7 = [a3 managedObjectContext];
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertInManagedObjectContext:v7 withUUID:v8];

  if (!a4 || v9)
  {
    v14 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create AssetResourceUploadJob"];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v12];
    *a4 = v13;

    v14 = 0;
  }

  return v14;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(PHAssetResourceUploadJobChangeRequest *)self destinationData];
  [v10 setUrlRequestData:v11];

  if (self->_incrementAttemptCount)
  {
    v12 = [v10 attemptCount];
    v13 = [MEMORY[0x1E696AD98] numberWithShort:(v12 + 1)];
    v14 = [(PHChangeRequest *)self helper];
    v15 = [v14 mutations];
    [v15 setObject:v13 forKeyedSubscript:@"attemptCount"];
  }

  v16 = [(PHChangeRequest *)self helper];
  v39 = 0;
  v17 = [v16 applyMutationsToManagedObject:v8 error:&v39];
  v18 = v39;

  v19 = [(PHChangeRequest *)self helper];
  v20 = [v19 mutations];

  if (!v17)
  {
    v27 = v18;
    goto LABEL_19;
  }

  v21 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = [(PHChangeRequest *)self isMutated];
    *buf = 67109378;
    v41 = v22;
    v42 = 2112;
    v43 = v20;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  v23 = [(PHAssetResourceUploadJobChangeRequest *)self configurationHelper];
  v24 = [v23 mutableObjectIDsAndUUIDs];

  if (v24)
  {
    [v23 setAllowsInsert:1];
    [v23 setAllowsRemove:1];
    v25 = [MEMORY[0x1E69BE278] entityName];
    [v23 setDestinationEntityName:v25];

    v38 = v18;
    v26 = [v23 applyMutationsToManagedObjectToOneRelationship:v8 error:&v38];
    v27 = v38;

    v28 = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
    v29 = v28;
    if (v26)
    {
      v18 = v27;
      goto LABEL_14;
    }

LABEL_19:
    v34 = v27;
    if (a5)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v29 = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
LABEL_14:
  v30 = [v29 mutableObjectIDsAndUUIDs];

  if (!v30)
  {

    v34 = v18;
    v31 = 1;
    goto LABEL_22;
  }

  v31 = 1;
  [v29 setAllowsInsert:1];
  [v29 setAllowsRemove:1];
  v32 = [MEMORY[0x1E69BE4D0] entityName];
  [v29 setDestinationEntityName:v32];

  v37 = v18;
  LOBYTE(v32) = [v29 applyMutationsToManagedObjectToOneRelationship:v8 error:&v37];
  v33 = v37;

  v34 = v33;
  if ((v32 & 1) == 0)
  {
    if (a5)
    {
LABEL_17:
      v35 = v34;
      v31 = 0;
      *a5 = v34;
      goto LABEL_22;
    }

LABEL_20:
    v31 = 0;
  }

LABEL_22:

  return v31;
}

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!self->_shouldBypassValidateMutations)
  {
    objc_opt_class();
    v8 = v6;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    LODWORD(v11) = [v10 state];
    v12 = [v10 clientStatus];
    if (v12 == 1)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = [v10 uuid];
      v15 = [v13 ph_errorWithCode:3300 localizedDescription:{@"Cannot modify acknowledged job with uuid %@", v14}];
      v16 = v15;
      if (a4)
      {
        v17 = v15;
        v7 = 0;
        *a4 = v16;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_50;
    }

    LODWORD(v18) = v12;
    v14 = [(PHAssetResourceUploadJobChangeRequest *)self _getState];
    v19 = [(PHAssetResourceUploadJobChangeRequest *)self _getAcknowledgement];
    if (!(v14 | v19))
    {
      v16 = 0;
      v14 = 0;
      v7 = 1;
LABEL_50:

      goto LABEL_51;
    }

    v16 = v19;
    v20 = v11;
    v11 = v11;
    if (v14)
    {
      v11 = [v14 integerValue];
    }

    if (v16)
    {
      v18 = [v16 integerValue];
    }

    else
    {
      v18 = v18;
    }

    if ([v10 attemptCount] >= 1 && self->_incrementAttemptCount)
    {
      v21 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:{@"Cannot increment attemptCount more than its current value: %d", objc_msgSend(v10, "attemptCount")}];
      v22 = v21;
      if (a4)
      {
        v23 = v21;
        v7 = 0;
        *a4 = v22;
LABEL_49:

        goto LABEL_50;
      }

LABEL_48:
      v7 = 0;
      goto LABEL_49;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current state:%ld and acknowledgement:%ldcurrentAcknowledgement", v11, v18];
    if (v20 > 1u)
    {
      if (v20 != 2)
      {
        if (v20 == 3)
        {
          if (v11 != 3)
          {
            if (v18 > 0 || v11 != 1)
            {
              goto LABEL_44;
            }

            if ([v10 attemptCount])
            {
              [MEMORY[0x1E696ABC0] ph_errorWithCode:3307 localizedDescription:{@"Cannot reregister a job when attemptCount is %d", objc_msgSend(v10, "attemptCount")}];
              v24 = LABEL_45:;
              if (a4)
              {
                v24 = v24;
                *a4 = v24;
              }

              goto LABEL_48;
            }
          }
        }

        else if (v20 != 4 || v11 != 4)
        {
          goto LABEL_44;
        }

LABEL_43:
        v7 = 1;
        goto LABEL_49;
      }

      if (v18 <= 0 && (v11 - 2) < 3)
      {
        goto LABEL_43;
      }

LABEL_34:
      if (v11 != 100 || v18 != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v18 <= 0 && (v11 - 1) < 2)
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }
    }

    else if (v11 == 2)
    {
      goto LABEL_43;
    }

LABEL_44:
    [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:{@"%@", v22}];
    goto LABEL_45;
  }

  v7 = 1;
LABEL_51:

  return v7;
}

- (id)_getAcknowledgement
{
  v2 = [(PHChangeRequest *)self helper];
  v3 = [v2 mutations];
  v4 = [v3 objectForKey:@"clientStatus"];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v4, "longValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getState
{
  v2 = [(PHChangeRequest *)self helper];
  v3 = [v2 mutations];
  v4 = [v3 objectForKey:@"state"];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v4, "longValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
  v8 = [v7 mutableObjectIDsAndUUIDs];
  v9 = [v8 firstObject];

  v10 = [(PHAssetResourceUploadJobChangeRequest *)self _getConfigurationFromLibrary:v6 error:a4];
  if (v10)
  {
    v11 = [PHAssetResourceUploadJobChangeRequest _countOfCancellableAcknowledgeableJobsWithConfiguration:v10 library:v6 error:a4];
    if (v11 != -1)
    {
      if (v11 >= +[PHAssetResourceUploadJob jobLimit])
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = @"Too many unacknowledged jobs. Please acknowledge jobs, or cancel pending ones";
        v16 = 3307;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __78__PHAssetResourceUploadJobChangeRequest_validateInsertIntoPhotoLibrary_error___block_invoke;
        v21[3] = &unk_1E75AADC0;
        v23 = &v24;
        v22 = v10;
        [v6 performBlockAndWait:v21];
        if (isKindOfClass)
        {
          v13 = 0;
        }

        else
        {
          v13 = @"Asset Resource objectID cannot be nil, might be virtual resource.";
        }

        if (*(v25 + 12) == 1)
        {
          v13 = @"Cannot add jobs if configuration's state is disabled.";
        }

        else if (!*(v25 + 12))
        {
          v13 = @"Cannot add jobs if configuration's state is unknown.";
        }

        _Block_object_dispose(&v24, 8);
        if (!v13)
        {
          v18 = 1;
          goto LABEL_18;
        }

        v14 = MEMORY[0x1E696ABC0];
        v20 = v13;
        v15 = @"%@";
        v16 = 3300;
      }

      v17 = [v14 ph_errorWithCode:v16 localizedDescription:{v15, v20}];
      if (a4)
      {
        v17 = v17;
        *a4 = v17;
      }
    }
  }

  v18 = 0;
LABEL_18:

  return v18;
}

uint64_t __78__PHAssetResourceUploadJobChangeRequest_validateInsertIntoPhotoLibrary_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_getConfigurationFromLibrary:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHAssetResourceUploadJobChangeRequest *)self configurationHelper];
  v8 = [v7 mutableObjectIDsAndUUIDs];
  v9 = [v8 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E69BE278];
    v11 = v9;
    v12 = [v6 managedObjectContext];
    v13 = [v10 configurationWithObjectID:v11 managedObjectContext:v12 error:a4];

LABEL_7:
    v18 = v13;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected behavior: configuration always has an objectID. Flagging that here, configuration is a uuid: %@", &v21, 0xCu);
    }

    v16 = MEMORY[0x1E69BE278];
    v17 = [v6 managedObjectContext];
    v13 = [v16 configurationWithUUID:v14 managedObjectContext:v17 error:a4];

    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3201 localizedDescription:@"Invalid configuration identifier"];
  if (a4)
  {
    v19 = v19;
    *a4 = v19;
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (void)retryWithDestination:(id)a3
{
  v5 = a3;
  [(PHAssetResourceUploadJobChangeRequest *)self updateState:1];
  if (v5)
  {
    v4 = [MEMORY[0x1E69BE280] dataForURLRequest:v5];
    [(PHAssetResourceUploadJobChangeRequest *)self setDestinationData:v4];
  }

  [(PHAssetResourceUploadJobChangeRequest *)self incrementAttemptCount];
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  [(PHRelationshipChangeRequestHelper *)self->_configurationHelper encodeToXPCDict:xdict];
  [(PHRelationshipChangeRequestHelper *)self->_internalResourceObjectIDHelper encodeToXPCDict:xdict];
  if (self->_shouldBypassValidateMutations)
  {
    xpc_dictionary_set_BOOL(xdict, "PHResourceUploadShouldBypassValidateMutationsKey", 1);
  }

  if (self->_incrementAttemptCount)
  {
    xpc_dictionary_set_BOOL(xdict, "PHIncrementAttemptCountKey", 1);
  }

  destinationData = self->_destinationData;
  if (destinationData)
  {
    xpc_dictionary_set_data(xdict, "PHDestinationDataKey", [(NSData *)destinationData bytes], [(NSData *)self->_destinationData length]);
  }

  MEMORY[0x1EEE66BB8]();
}

- (PHAssetResourceUploadJobChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PHAssetResourceUploadJobChangeRequest;
  v11 = [(PHChangeRequest *)&v24 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"configuration" xpcDict:v8 changeRequestHelper:v11->super._helper];
    configurationHelper = v11->_configurationHelper;
    v11->_configurationHelper = v14;

    v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assetResource" xpcDict:v8 changeRequestHelper:v11->super._helper];
    internalResourceObjectIDHelper = v11->_internalResourceObjectIDHelper;
    v11->_internalResourceObjectIDHelper = v16;

    v11->_shouldBypassValidateMutations = xpc_dictionary_get_BOOL(v8, "PHResourceUploadShouldBypassValidateMutationsKey");
    v18 = xpc_dictionary_get_BOOL(v8, "PHIncrementAttemptCountKey");
    v11->_incrementAttemptCount = v18;
    if (v18 || v11->_shouldBypassValidateMutations)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [v9 recordUpdateRequest:v11];
    }

    length = 0;
    data = xpc_dictionary_get_data(v8, "PHDestinationDataKey", &length);
    if (data)
    {
      v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
      destinationData = v11->_destinationData;
      v11->_destinationData = v20;
    }
  }

  return v11;
}

- (void)_commonInitializer
{
  v3 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"configuration" changeRequestHelper:self->super._helper];
  configurationHelper = self->_configurationHelper;
  self->_configurationHelper = v3;

  self->_internalResourceObjectIDHelper = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assetResource" changeRequestHelper:self->super._helper];

  MEMORY[0x1EEE66BB8]();
}

- (PHAssetResourceUploadJobChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHAssetResourceUploadJobChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    [(PHAssetResourceUploadJobChangeRequest *)v8 _commonInitializer];
  }

  return v8;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHAssetResourceUploadJobChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    [(PHAssetResourceUploadJobChangeRequest *)v2 _commonInitializer];
  }

  return v2;
}

+ (int64_t)_countOfCancellableAcknowledgeableJobsWithConfiguration:(id)a3 library:(id)a4 error:(id *)a5
{
  v37[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AE18];
  v10 = [v7 objectID];
  v11 = [v9 predicateWithFormat:@"configuration = %@", v10];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %hu", @"clientStatus", 1];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"state", &unk_1F102DE68];
  v14 = MEMORY[0x1E695D5E0];
  v15 = [MEMORY[0x1E69BE270] entityName];
  v16 = [v14 fetchRequestWithEntityName:v15];

  v17 = MEMORY[0x1E696AB28];
  v37[0] = v11;
  v37[1] = v12;
  v37[2] = v13;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [v16 setPredicate:v19];

  [v16 setFetchLimit:{+[PHAssetResourceUploadJob jobLimit](PHAssetResourceUploadJob, "jobLimit")}];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__8525;
  v35 = __Block_byref_object_dispose__8526;
  v36 = 0;
  v20 = [v8 managedObjectContext];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __111__PHAssetResourceUploadJobChangeRequest__countOfCancellableAcknowledgeableJobsWithConfiguration_library_error___block_invoke;
  v26[3] = &unk_1E75A4898;
  v29 = &v31;
  v21 = v20;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v30 = a5;
  [v8 performBlockAndWait:v26];
  v23 = v32[5];
  if (v23)
  {
    v24 = [v23 count];
  }

  else
  {
    v24 = -1;
  }

  _Block_object_dispose(&v31, 8);
  return v24;
}

uint64_t __111__PHAssetResourceUploadJobChangeRequest__countOfCancellableAcknowledgeableJobsWithConfiguration_library_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:*(a1 + 56)];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)creationRequestForAssetResourceUploadJobWithDestination:(id)a3 resource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PHAssetResourceUploadJobChangeRequest alloc] initForNewObject];
  v8 = [MEMORY[0x1E69BE280] dataForURLRequest:v6];

  v9 = objc_alloc_init(PHFetchOptions);
  v10 = [v7 photoLibrary];
  [(PHFetchOptions *)v9 setPhotoLibrary:v10];

  v11 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v9];
  v12 = [v5 internalResourceObjectID];

  [v7 setInternalResourceObjectID:v12];
  [v7 setDestinationData:v8];
  [v7 setAttemptCount:0];
  v13 = [v11 firstObject];
  [v7 setUploadJobConfiguration:v13];

  v14 = [MEMORY[0x1E695DF00] date];
  [v7 setLastModifiedDate:v14];

  [v7 updateState:1];
  [v7 updateClientStatus:0];

  return v7;
}

+ (id)changeRequestForUploadJob:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHAssetResourceUploadJobChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end