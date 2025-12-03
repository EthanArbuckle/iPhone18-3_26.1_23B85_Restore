@interface NSCloudKitMirroringFetchRecordsRequest
- (BOOL)validateForUseWithStore:(id)store error:(id *)error;
- (NSCloudKitMirroringFetchRecordsRequest)initWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)throwNotEditable:(uint64_t)result;
- (void)dealloc;
- (void)setEntityNameToAttributeNamesToFetch:(id)fetch;
- (void)setEntityNameToAttributesToFetch:(id)fetch;
- (void)setObjectIDsToFetch:(id)fetch;
@end

@implementation NSCloudKitMirroringFetchRecordsRequest

- (NSCloudKitMirroringFetchRecordsRequest)initWithOptions:(id)options completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringFetchRecordsRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 initWithOptions:options completionBlock:block];
  if (v4)
  {
    v4->_objectIDsToFetch = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v4->_entityNameToAttributeNamesToFetch = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4->_entityNameToAttributesToFetch = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4->_editable = 1;
    v4->_perOperationObjectThreshold = 400;
  }

  return v4;
}

- (void)dealloc
{
  self->_entityNameToAttributesToFetch = 0;

  self->_entityNameToAttributeNamesToFetch = 0;
  self->_objectIDsToFetch = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringFetchRecordsRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringFetchRecordsRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:zone];
  v4[10] = self->_objectIDsToFetch;
  v4[11] = self->_entityNameToAttributesToFetch;
  v4[12] = self->_entityNameToAttributeNamesToFetch;
  *(v4 + 104) = self->_editable;
  v4[14] = self->_perOperationObjectThreshold;
  return v4;
}

- (void)setEntityNameToAttributesToFetch:(id)fetch
{
  if (self->_editable)
  {
    entityNameToAttributesToFetch = self->_entityNameToAttributesToFetch;
    if (entityNameToAttributesToFetch != fetch)
    {

      self->_entityNameToAttributesToFetch = [fetch copy];
      if ([(NSDictionary *)self->_entityNameToAttributeNamesToFetch count])
      {

        self->_entityNameToAttributeNamesToFetch = objc_alloc_init(MEMORY[0x1E695DF20]);
      }
    }
  }

  else
  {

    [(NSCloudKitMirroringFetchRecordsRequest *)self throwNotEditable:a2];
  }
}

- (uint64_t)throwNotEditable:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromSelector(aSelector);
    v7 = [v3 exceptionWithName:v4 reason:objc_msgSend(v5 userInfo:{"stringWithFormat:", @"%@ called after the request was sent to %@\nRequest: %@", v6, NSStringFromSelector(sel_executeRequest_error_), v2), 0}];
    objc_exception_throw(v7);
  }

  return result;
}

- (void)setEntityNameToAttributeNamesToFetch:(id)fetch
{
  if (self->_editable)
  {
    entityNameToAttributeNamesToFetch = self->_entityNameToAttributeNamesToFetch;
    if (entityNameToAttributeNamesToFetch != fetch)
    {

      self->_entityNameToAttributeNamesToFetch = [fetch copy];
      if ([(NSDictionary *)self->_entityNameToAttributesToFetch count])
      {

        self->_entityNameToAttributesToFetch = objc_alloc_init(MEMORY[0x1E695DF20]);
      }
    }
  }

  else
  {

    [(NSCloudKitMirroringFetchRecordsRequest *)self throwNotEditable:a2];
  }
}

- (void)setObjectIDsToFetch:(id)fetch
{
  if (self->_editable)
  {
    objectIDsToFetch = self->_objectIDsToFetch;
    if (objectIDsToFetch != fetch)
    {

      self->_objectIDsToFetch = [fetch copy];
    }
  }

  else
  {

    [(NSCloudKitMirroringFetchRecordsRequest *)self throwNotEditable:a2];
  }
}

- (BOOL)validateForUseWithStore:(id)store error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v23.receiver = self;
  v23.super_class = NSCloudKitMirroringFetchRecordsRequest;
  if (![(NSCloudKitMirroringRequest *)&v23 validateForUseWithStore:store error:&v24])
  {
    goto LABEL_10;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [objc_msgSend(store "persistentStoreCoordinator")];
  if ([(NSDictionary *)self->_entityNameToAttributesToFetch count])
  {
    entityNameToAttributesToFetch = self->_entityNameToAttributesToFetch;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke;
    v22[3] = &unk_1E6EC3660;
    v22[4] = v9;
    v22[5] = v8;
    v22[6] = v7;
    v11 = v22;
LABEL_6:
    [(NSDictionary *)entityNameToAttributesToFetch enumerateKeysAndObjectsUsingBlock:v11];
    goto LABEL_7;
  }

  if ([(NSDictionary *)self->_entityNameToAttributeNamesToFetch count])
  {
    entityNameToAttributesToFetch = self->_entityNameToAttributeNamesToFetch;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_3;
    v21[3] = &unk_1E6EC3660;
    v21[4] = v9;
    v21[5] = v8;
    v21[6] = v7;
    v11 = v21;
    goto LABEL_6;
  }

LABEL_7:
  if ([v7 count])
  {
    [v7 sortUsingSelector:sel_compare_];
    v12 = objc_alloc(MEMORY[0x1E696AD60]);
    v13 = objc_opt_class();
    v14 = [v12 initWithFormat:@"Invalid '%@'. The following validation failures occured:", NSStringFromClass(v13)];
    [v14 appendFormat:@"\n%@", objc_msgSend(v7, "componentsJoinedByString:", @"\n"];
    v15 = *MEMORY[0x1E696A250];
    v29 = *MEMORY[0x1E696A588];
    v30[0] = v14;
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1)}];
  }

  else if (v8)
  {

    self->_entityNameToAttributesToFetch = [v8 copy];
    self->_editable = 0;
    LOBYTE(v16) = 1;
    goto LABEL_20;
  }

LABEL_10:
  if (v24)
  {
    if (error)
    {
      LOBYTE(v16) = 0;
      *error = v24;
      goto LABEL_20;
    }

LABEL_17:
    LOBYTE(v16) = 0;
    goto LABEL_20;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringFetchRecordsRequest.m";
    v27 = 1024;
    v28 = 205;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v18 = _PFLogGetLogStream(17);
  v16 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
  if (v16)
  {
    *buf = 136315394;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringFetchRecordsRequest.m";
    v27 = 1024;
    v28 = 205;
    _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_17;
  }

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

void __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_msgSend(*(a1 + 32) "entitiesByName")];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) objectForKey:a2];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v8 forKey:a2];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_2;
    v11[3] = &unk_1E6EC3638;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = *(a1 + 48);
    v11[7] = a2;
    [a3 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - entity not found in model", a2];

    [v9 addObject:v10];
  }
}

uint64_t __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "attributesByName")];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
  }

  else
  {
    v7 = *(a1 + 48);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@ - attribute not found on entity", *(a1 + 56), objc_msgSend(a2, "name")];
    v6 = v7;
  }

  return [v6 addObject:v5];
}

void __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_msgSend(*(a1 + 32) "entitiesByName")];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) objectForKey:a2];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v8 forKey:a2];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_4;
    v11[3] = &unk_1E6EC3688;
    v11[4] = v7;
    v11[5] = v8;
    v11[6] = *(a1 + 48);
    v11[7] = a2;
    [a3 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - entity not found in model", a2];

    [v9 addObject:v10];
  }
}

uint64_t __72__NSCloudKitMirroringFetchRecordsRequest_validateForUseWithStore_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "attributesByName")];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
  }

  else
  {
    v7 = *(a1 + 48);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@ - attribute not found on entity", *(a1 + 56), a2];
    v6 = v7;
  }

  return [v6 addObject:v5];
}

@end