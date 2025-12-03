@interface PHAssetResourceUploadJobChangeRequest
+ (id)changeRequestForUploadJob:(id)job;
+ (id)creationRequestForAssetResourceUploadJobWithDestination:(id)destination resource:(id)resource;
+ (int64_t)_countOfCancellableAcknowledgeableJobsWithConfiguration:(id)configuration library:(id)library error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (PHAssetResourceUploadJobChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHAssetResourceUploadJobChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)_getAcknowledgement;
- (id)_getConfigurationFromLibrary:(id)library error:(id *)error;
- (id)_getState;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)lastModifiedDate;
- (int64_t)clientStatus;
- (int64_t)state;
- (signed)attemptCount;
- (void)_commonInitializer;
- (void)encodeToXPCDict:(id)dict;
- (void)retryWithDestination:(id)destination;
- (void)setAttemptCount:(signed __int16)count;
- (void)setDestinationData:(id)data;
- (void)setInternalResourceObjectID:(id)d;
- (void)setLastModifiedDate:(id)date;
- (void)setOnlyClientStatus:(int64_t)status;
- (void)setOnlyState:(int64_t)state;
- (void)setState:(int64_t)state clientStatus:(int64_t)status;
- (void)setUploadJobConfiguration:(id)configuration;
- (void)updateClientStatus:(int64_t)status;
- (void)updateState:(int64_t)state;
@end

@implementation PHAssetResourceUploadJobChangeRequest

- (void)setOnlyClientStatus:(int64_t)status
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"clientStatus"];
}

- (int64_t)clientStatus
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"clientStatus"];

  shortValue = [v5 shortValue];
  return shortValue;
}

- (void)setOnlyState:(int64_t)state
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"state"];
}

- (int64_t)state
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"state"];

  shortValue = [v5 shortValue];
  return shortValue;
}

- (void)setAttemptCount:(signed __int16)count
{
  countCopy = count;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:countCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"attemptCount"];
}

- (signed)attemptCount
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"attemptCount"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"lastModifiedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"lastModifiedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"lastModifiedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"lastModifiedDate"];
  }
}

- (id)lastModifiedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lastModifiedDate"];

  return v5;
}

- (void)setState:(int64_t)state clientStatus:(int64_t)status
{
  self->_shouldBypassValidateMutations = 1;
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyState:state];
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyClientStatus:status];
  date = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:date];
}

- (void)updateClientStatus:(int64_t)status
{
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyClientStatus:status];
  date = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:date];
}

- (void)updateState:(int64_t)state
{
  [(PHAssetResourceUploadJobChangeRequest *)self setOnlyState:state];
  date = [MEMORY[0x1E695DF00] date];
  [(PHAssetResourceUploadJobChangeRequest *)self setLastModifiedDate:date];
}

- (void)setInternalResourceObjectID:(id)d
{
  v8[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8[0] = dCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    internalResourceObjectIDHelper = self->_internalResourceObjectIDHelper;
    v7 = [v5 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)internalResourceObjectIDHelper setMutableObjectIDsAndUUIDs:v7];
  }
}

- (void)setUploadJobConfiguration:(id)configuration
{
  v9[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v9[0] = configurationCopy;
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

- (void)setDestinationData:(id)data
{
  dataCopy = data;
  [(PHChangeRequest *)self didMutate];
  v5 = [dataCopy copy];

  destinationData = self->_destinationData;
  self->_destinationData = v5;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE270];
  managedObjectContext = [library managedObjectContext];
  uuid = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertInManagedObjectContext:managedObjectContext withUUID:uuid];

  if (!error || v9)
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
    *error = v13;

    v14 = 0;
  }

  return v14;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  v8 = objectCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  destinationData = [(PHAssetResourceUploadJobChangeRequest *)self destinationData];
  [v10 setUrlRequestData:destinationData];

  if (self->_incrementAttemptCount)
  {
    attemptCount = [v10 attemptCount];
    v13 = [MEMORY[0x1E696AD98] numberWithShort:(attemptCount + 1)];
    helper = [(PHChangeRequest *)self helper];
    mutations = [helper mutations];
    [mutations setObject:v13 forKeyedSubscript:@"attemptCount"];
  }

  helper2 = [(PHChangeRequest *)self helper];
  v39 = 0;
  v17 = [helper2 applyMutationsToManagedObject:v8 error:&v39];
  v18 = v39;

  helper3 = [(PHChangeRequest *)self helper];
  mutations2 = [helper3 mutations];

  if (!v17)
  {
    v27 = v18;
    goto LABEL_19;
  }

  v21 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    isMutated = [(PHChangeRequest *)self isMutated];
    *buf = 67109378;
    v41 = isMutated;
    v42 = 2112;
    v43 = mutations2;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  configurationHelper = [(PHAssetResourceUploadJobChangeRequest *)self configurationHelper];
  mutableObjectIDsAndUUIDs = [configurationHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs)
  {
    [configurationHelper setAllowsInsert:1];
    [configurationHelper setAllowsRemove:1];
    entityName = [MEMORY[0x1E69BE278] entityName];
    [configurationHelper setDestinationEntityName:entityName];

    v38 = v18;
    v26 = [configurationHelper applyMutationsToManagedObjectToOneRelationship:v8 error:&v38];
    v27 = v38;

    internalResourceObjectIDHelper = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
    internalResourceObjectIDHelper2 = internalResourceObjectIDHelper;
    if (v26)
    {
      v18 = v27;
      goto LABEL_14;
    }

LABEL_19:
    v34 = v27;
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  internalResourceObjectIDHelper2 = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
LABEL_14:
  mutableObjectIDsAndUUIDs2 = [internalResourceObjectIDHelper2 mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs2)
  {

    v34 = v18;
    v31 = 1;
    goto LABEL_22;
  }

  v31 = 1;
  [internalResourceObjectIDHelper2 setAllowsInsert:1];
  [internalResourceObjectIDHelper2 setAllowsRemove:1];
  entityName2 = [MEMORY[0x1E69BE4D0] entityName];
  [internalResourceObjectIDHelper2 setDestinationEntityName:entityName2];

  v37 = v18;
  LOBYTE(entityName2) = [internalResourceObjectIDHelper2 applyMutationsToManagedObjectToOneRelationship:v8 error:&v37];
  v33 = v37;

  v34 = v33;
  if ((entityName2 & 1) == 0)
  {
    if (error)
    {
LABEL_17:
      v35 = v34;
      v31 = 0;
      *error = v34;
      goto LABEL_22;
    }

LABEL_20:
    v31 = 0;
  }

LABEL_22:

  return v31;
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (!self->_shouldBypassValidateMutations)
  {
    objc_opt_class();
    v8 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    LODWORD(integerValue) = [v10 state];
    clientStatus = [v10 clientStatus];
    if (clientStatus == 1)
    {
      v13 = MEMORY[0x1E696ABC0];
      uuid = [v10 uuid];
      v15 = [v13 ph_errorWithCode:3300 localizedDescription:{@"Cannot modify acknowledged job with uuid %@", uuid}];
      v16 = v15;
      if (error)
      {
        v17 = v15;
        v7 = 0;
        *error = v16;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_50;
    }

    LODWORD(integerValue2) = clientStatus;
    uuid = [(PHAssetResourceUploadJobChangeRequest *)self _getState];
    _getAcknowledgement = [(PHAssetResourceUploadJobChangeRequest *)self _getAcknowledgement];
    if (!(uuid | _getAcknowledgement))
    {
      v16 = 0;
      uuid = 0;
      v7 = 1;
LABEL_50:

      goto LABEL_51;
    }

    v16 = _getAcknowledgement;
    v20 = integerValue;
    integerValue = integerValue;
    if (uuid)
    {
      integerValue = [uuid integerValue];
    }

    if (v16)
    {
      integerValue2 = [v16 integerValue];
    }

    else
    {
      integerValue2 = integerValue2;
    }

    if ([v10 attemptCount] >= 1 && self->_incrementAttemptCount)
    {
      v21 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:{@"Cannot increment attemptCount more than its current value: %d", objc_msgSend(v10, "attemptCount")}];
      v22 = v21;
      if (error)
      {
        v23 = v21;
        v7 = 0;
        *error = v22;
LABEL_49:

        goto LABEL_50;
      }

LABEL_48:
      v7 = 0;
      goto LABEL_49;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current state:%ld and acknowledgement:%ldcurrentAcknowledgement", integerValue, integerValue2];
    if (v20 > 1u)
    {
      if (v20 != 2)
      {
        if (v20 == 3)
        {
          if (integerValue != 3)
          {
            if (integerValue2 > 0 || integerValue != 1)
            {
              goto LABEL_44;
            }

            if ([v10 attemptCount])
            {
              [MEMORY[0x1E696ABC0] ph_errorWithCode:3307 localizedDescription:{@"Cannot reregister a job when attemptCount is %d", objc_msgSend(v10, "attemptCount")}];
              v24 = LABEL_45:;
              if (error)
              {
                v24 = v24;
                *error = v24;
              }

              goto LABEL_48;
            }
          }
        }

        else if (v20 != 4 || integerValue != 4)
        {
          goto LABEL_44;
        }

LABEL_43:
        v7 = 1;
        goto LABEL_49;
      }

      if (integerValue2 <= 0 && (integerValue - 2) < 3)
      {
        goto LABEL_43;
      }

LABEL_34:
      if (integerValue != 100 || integerValue2 != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (integerValue2 <= 0 && (integerValue - 1) < 2)
        {
          goto LABEL_43;
        }

        goto LABEL_34;
      }
    }

    else if (integerValue == 2)
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
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v4 = [mutations objectForKey:@"clientStatus"];

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
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v4 = [mutations objectForKey:@"state"];

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

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  internalResourceObjectIDHelper = [(PHAssetResourceUploadJobChangeRequest *)self internalResourceObjectIDHelper];
  mutableObjectIDsAndUUIDs = [internalResourceObjectIDHelper mutableObjectIDsAndUUIDs];
  firstObject = [mutableObjectIDsAndUUIDs firstObject];

  v10 = [(PHAssetResourceUploadJobChangeRequest *)self _getConfigurationFromLibrary:libraryCopy error:error];
  if (v10)
  {
    v11 = [PHAssetResourceUploadJobChangeRequest _countOfCancellableAcknowledgeableJobsWithConfiguration:v10 library:libraryCopy error:error];
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
        [libraryCopy performBlockAndWait:v21];
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
      if (error)
      {
        v17 = v17;
        *error = v17;
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

- (id)_getConfigurationFromLibrary:(id)library error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  configurationHelper = [(PHAssetResourceUploadJobChangeRequest *)self configurationHelper];
  mutableObjectIDsAndUUIDs = [configurationHelper mutableObjectIDsAndUUIDs];
  firstObject = [mutableObjectIDsAndUUIDs firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E69BE278];
    v11 = firstObject;
    managedObjectContext = [libraryCopy managedObjectContext];
    v13 = [v10 configurationWithObjectID:v11 managedObjectContext:managedObjectContext error:error];

LABEL_7:
    v18 = v13;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = firstObject;
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Unexpected behavior: configuration always has an objectID. Flagging that here, configuration is a uuid: %@", &v21, 0xCu);
    }

    v16 = MEMORY[0x1E69BE278];
    managedObjectContext2 = [libraryCopy managedObjectContext];
    v13 = [v16 configurationWithUUID:v14 managedObjectContext:managedObjectContext2 error:error];

    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3201 localizedDescription:@"Invalid configuration identifier"];
  if (error)
  {
    v19 = v19;
    *error = v19;
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (void)retryWithDestination:(id)destination
{
  destinationCopy = destination;
  [(PHAssetResourceUploadJobChangeRequest *)self updateState:1];
  if (destinationCopy)
  {
    v4 = [MEMORY[0x1E69BE280] dataForURLRequest:destinationCopy];
    [(PHAssetResourceUploadJobChangeRequest *)self setDestinationData:v4];
  }

  [(PHAssetResourceUploadJobChangeRequest *)self incrementAttemptCount];
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

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

- (PHAssetResourceUploadJobChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v24.receiver = self;
  v24.super_class = PHAssetResourceUploadJobChangeRequest;
  v11 = [(PHChangeRequest *)&v24 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"configuration" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
    configurationHelper = v11->_configurationHelper;
    v11->_configurationHelper = v14;

    v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assetResource" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
    internalResourceObjectIDHelper = v11->_internalResourceObjectIDHelper;
    v11->_internalResourceObjectIDHelper = v16;

    v11->_shouldBypassValidateMutations = xpc_dictionary_get_BOOL(dictCopy, "PHResourceUploadShouldBypassValidateMutationsKey");
    v18 = xpc_dictionary_get_BOOL(dictCopy, "PHIncrementAttemptCountKey");
    v11->_incrementAttemptCount = v18;
    if (v18 || v11->_shouldBypassValidateMutations)
    {
      [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
      [requestCopy recordUpdateRequest:v11];
    }

    length = 0;
    data = xpc_dictionary_get_data(dictCopy, "PHDestinationDataKey", &length);
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

- (PHAssetResourceUploadJobChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHAssetResourceUploadJobChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

+ (int64_t)_countOfCancellableAcknowledgeableJobsWithConfiguration:(id)configuration library:(id)library error:(id *)error
{
  v37[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  libraryCopy = library;
  v9 = MEMORY[0x1E696AE18];
  objectID = [configurationCopy objectID];
  v11 = [v9 predicateWithFormat:@"configuration = %@", objectID];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %hu", @"clientStatus", 1];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"state", &unk_1F102DE68];
  v14 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE270] entityName];
  v16 = [v14 fetchRequestWithEntityName:entityName];

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
  managedObjectContext = [libraryCopy managedObjectContext];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __111__PHAssetResourceUploadJobChangeRequest__countOfCancellableAcknowledgeableJobsWithConfiguration_library_error___block_invoke;
  v26[3] = &unk_1E75A4898;
  v29 = &v31;
  v21 = managedObjectContext;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  errorCopy = error;
  [libraryCopy performBlockAndWait:v26];
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

+ (id)creationRequestForAssetResourceUploadJobWithDestination:(id)destination resource:(id)resource
{
  resourceCopy = resource;
  destinationCopy = destination;
  initForNewObject = [[PHAssetResourceUploadJobChangeRequest alloc] initForNewObject];
  v8 = [MEMORY[0x1E69BE280] dataForURLRequest:destinationCopy];

  v9 = objc_alloc_init(PHFetchOptions);
  photoLibrary = [initForNewObject photoLibrary];
  [(PHFetchOptions *)v9 setPhotoLibrary:photoLibrary];

  v11 = [PHAssetResourceUploadJobConfiguration fetchAssetResourceUploadJobConfigurationsWithOptions:v9];
  internalResourceObjectID = [resourceCopy internalResourceObjectID];

  [initForNewObject setInternalResourceObjectID:internalResourceObjectID];
  [initForNewObject setDestinationData:v8];
  [initForNewObject setAttemptCount:0];
  firstObject = [v11 firstObject];
  [initForNewObject setUploadJobConfiguration:firstObject];

  date = [MEMORY[0x1E695DF00] date];
  [initForNewObject setLastModifiedDate:date];

  [initForNewObject updateState:1];
  [initForNewObject updateClientStatus:0];

  return initForNewObject;
}

+ (id)changeRequestForUploadJob:(id)job
{
  jobCopy = job;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHAssetResourceUploadJobChangeRequest alloc];
    uuid = [jobCopy uuid];
    objectID = [jobCopy objectID];
    v7 = [(PHAssetResourceUploadJobChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end