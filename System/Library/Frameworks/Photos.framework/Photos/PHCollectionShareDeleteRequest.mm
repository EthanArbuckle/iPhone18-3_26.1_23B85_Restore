@interface PHCollectionShareDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (PHCollectionShareDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
- (void)encodeToXPCDict:(id)dict;
@end

@implementation PHCollectionShareDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  operation = [(PHCollectionShareDeleteRequest *)self operation];
  if (operation > 1)
  {
    if (operation == 2)
    {
      v10 = 0;
      v7 = [objectCopy incrementallyDeleteAndSaveWithError:&v10];
      v8 = v10;
      if ((v7 & 1) == 0)
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v8;
          _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to incrementally delete collection share: %@", buf, 0xCu);
        }
      }
    }

    else if (operation == 3)
    {
      [objectCopy unsubscribeWithCompletionHandler:&__block_literal_global_50069];
    }
  }

  else if (operation)
  {
    if (operation == 1)
    {
      [objectCopy untrash];
    }
  }

  else
  {
    [objectCopy trash];
  }
}

void __67__PHCollectionShareDeleteRequest_deleteManagedObject_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Failed to incrementally unsubscribe from collection share: %@", &v4, 0xCu);
  }
}

- (void)encodeToXPCDict:(id)dict
{
  v5.receiver = self;
  v5.super_class = PHCollectionShareDeleteRequest;
  dictCopy = dict;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:dictCopy];
  xpc_dictionary_set_int64(dictCopy, "deleteOperation", self->_operation);
  xpc_dictionary_set_BOOL(dictCopy, "photosctlExpungeOverride", self->_photosctlExpungeOverride);
}

- (PHCollectionShareDeleteRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  v11.receiver = self;
  v11.super_class = PHCollectionShareDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:dictCopy request:request clientAuthorization:authorization];
  if (v9)
  {
    v9->_operation = xpc_dictionary_get_int64(dictCopy, "deleteOperation");
    v9->_photosctlExpungeOverride = xpc_dictionary_get_BOOL(dictCopy, "photosctlExpungeOverride");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = PHCollectionShareDeleteRequest;
  v20 = 0;
  v7 = [(PHObjectDeleteRequest *)&v19 validateForDeleteManagedObject:objectCopy error:&v20];
  v8 = v20;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (!-[PHCollectionShareDeleteRequest operation](self, "operation") && [objectCopy trashedState] == 1)
  {
    v9 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CollectionShare is already is trash state"];
    v24[0] = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = v24;
    v13 = &v23;
LABEL_11:
    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v16 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v15];

    v8 = v16;
LABEL_12:
    if (error)
    {
      v17 = v8;
      v14 = 0;
      *error = v8;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_15;
  }

  if (-[PHCollectionShareDeleteRequest operation](self, "operation") == 1 && ![objectCopy trashedState])
  {
    v9 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CollectionShare is not is trash state"];
    v22 = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v22;
    v13 = &v21;
    goto LABEL_11;
  }

  if (![(PHCollectionShareDeleteRequest *)self photosctlExpungeOverride])
  {
    [(PHCollectionShareDeleteRequest *)self operation];
  }

  v14 = 1;
LABEL_15:

  return v14;
}

@end