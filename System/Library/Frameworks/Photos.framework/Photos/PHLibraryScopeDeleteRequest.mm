@interface PHLibraryScopeDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (PHLibraryScopeDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHLibraryScopeDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHLibraryScopeDeleteRequest *)self operation];
  switch(v6)
  {
    case 2:
      v10 = 0;
      v7 = [v5 incrementallyDeleteAndSaveWithError:&v10];
      v8 = v10;
      if ((v7 & 1) == 0)
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v8;
          _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to incrementally delete scope: %@", buf, 0xCu);
        }
      }

      break;
    case 1:
      [v5 untrash];
      break;
    case 0:
      [v5 trash];
      break;
  }
}

- (void)encodeToXPCDict:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHLibraryScopeDeleteRequest;
  v4 = a3;
  [(PHObjectDeleteRequest *)&v5 encodeToXPCDict:v4];
  xpc_dictionary_set_int64(v4, "deleteOperation", self->_operation);
  xpc_dictionary_set_BOOL(v4, "photosctlExpungeOverride", self->_photosctlExpungeOverride);
}

- (PHLibraryScopeDeleteRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = PHLibraryScopeDeleteRequest;
  v9 = [(PHObjectDeleteRequest *)&v11 initWithXPCDict:v8 request:a4 clientAuthorization:a5];
  if (v9)
  {
    v9->_operation = xpc_dictionary_get_int64(v8, "deleteOperation");
    v9->_photosctlExpungeOverride = xpc_dictionary_get_BOOL(v8, "photosctlExpungeOverride");
  }

  return v9;
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = PHLibraryScopeDeleteRequest;
  v25 = 0;
  v7 = [(PHObjectDeleteRequest *)&v24 validateForDeleteManagedObject:v6 error:&v25];
  v8 = v25;
  if (v7)
  {
    if (!-[PHLibraryScopeDeleteRequest operation](self, "operation") && [v6 trashedState] == 1)
    {
      v9 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LibraryScope is already is trash state"];
      v31[0] = v10;
      v11 = MEMORY[0x1E695DF20];
      v12 = v31;
      v13 = &v30;
LABEL_15:
      v20 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      v21 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v20];

      v14 = 0;
      v8 = v21;
      goto LABEL_16;
    }

    if (-[PHLibraryScopeDeleteRequest operation](self, "operation") == 1 && ![v6 trashedState])
    {
      v9 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LibraryScope is not is trash state"];
      v29 = v10;
      v11 = MEMORY[0x1E695DF20];
      v12 = &v29;
      v13 = &v28;
      goto LABEL_15;
    }

    if ([(PHLibraryScopeDeleteRequest *)self photosctlExpungeOverride]|| [(PHLibraryScopeDeleteRequest *)self operation]!= 2)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v15 = [v6 libraryScopeIsActive];
    if (v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A LibraryScope that's actively syncing cannot be expunged. Use -[PHLibraryScope startExitFromLibraryScopeWithRetentionPolicy:completion:]"];
      v27 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v19 = [v16 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v18];

      v8 = v19;
    }

    v14 = v15 ^ 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  if (a4 && (v14 & 1) == 0)
  {
    v22 = v8;
    v14 = 0;
    *a4 = v8;
  }

LABEL_19:

  return v14;
}

@end