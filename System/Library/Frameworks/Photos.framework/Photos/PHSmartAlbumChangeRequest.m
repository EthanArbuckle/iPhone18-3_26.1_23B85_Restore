@interface PHSmartAlbumChangeRequest
+ (id)_changeRequestForSmartAlbum:(id)a3 userQuery:(id)a4;
+ (id)changeRequestForSmartAlbum:(id)a3;
+ (id)creationRequestForSmartAlbumCopyFromSmartAlbum:(id)a3;
+ (id)creationRequestForSmartAlbumWithTitle:(id)a3 userQuery:(id)a4;
+ (id)validateSmartAlbumTitle:(id)a3 error:(id *)a4;
+ (void)_deleteSmartAlbums:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)customSortAscending;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSString)title;
- (PHObjectPlaceholder)placeholderForCreatedSmartAlbum;
- (PHSmartAlbumChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHSmartAlbumChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)description;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)encodeToXPCDict:(id)a3;
- (void)setCustomSortAscending:(BOOL)a3;
- (void)setCustomSortKey:(unsigned int)a3;
- (void)setTitle:(id)a3;
@end

@implementation PHSmartAlbumChangeRequest

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHSmartAlbumChangeRequest;
  v3 = [(PHSmartAlbumChangeRequest *)&v8 description];
  v4 = [(PHSmartAlbumChangeRequest *)self title];
  v5 = [(PHSmartAlbumChangeRequest *)self userQuery];
  v6 = [v3 stringByAppendingFormat:@" title=%@ userQuery=%@", v4, v5];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (!v9)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v10 = [v7 entity];
  v11 = [v10 isKindOfEntity:v9];

  if (!v11 || [v7 kindValue] != 1507)
  {
    v20 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid album type"];
    v27[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v22];

LABEL_9:
    if (a5)
    {
      v23 = v14;
      v19 = 0;
      *a5 = v14;
      goto LABEL_13;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v12 = [(PHChangeRequest *)self helper];
  v25 = 0;
  v13 = [v12 applyMutationsToManagedObject:v7 error:&v25];
  v14 = v25;

  if (!v13)
  {
    goto LABEL_9;
  }

  userQuery = self->_userQuery;
  if (userQuery)
  {
    v16 = MEMORY[0x1E69BE708];
    v17 = v7;
    v18 = [v16 dataFromQuery:userQuery];
    [v17 setUserQueryData:v18];
  }

  v19 = 1;
LABEL_13:

  return v19;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v23 = 0;
  v11 = [v10 allowMutationToManagedObject:v8 propertyKey:v9 error:&v23];
  v12 = v23;

  if (v11)
  {
    if (([v9 isEqualToString:@"title"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"customSortKey") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"customSortAscending"))
    {
      if ([v8 canPerformEditOperation:64])
      {
        v13 = 1;
        goto LABEL_13;
      }

      v14 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", v9];
      v27[0] = v15;
      v16 = MEMORY[0x1E695DF20];
      v17 = v27;
      v18 = &v26;
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", v9];
      v25 = v15;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v25;
      v18 = &v24;
    }

    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v20 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v19];

    v12 = v20;
  }

  if (a5)
  {
    v21 = v12;
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69BE458] insertNewSmartAlbumIntoLibrary:a3];
  v7 = [(PHChangeRequest *)self uuid];
  [v6 setUuid:v7];

  if (a4 && !v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create asset collection"];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v8 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v10];
  }

  return v6;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_userQuery)
  {
    v7 = [(PHSmartAlbumChangeRequest *)self title];
    v13 = 0;
    v8 = [objc_opt_class() validateSmartAlbumTitle:v7 error:&v13];
    v9 = v13;

    v10 = v8 != 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Smart Album doesn't allow nil query"];
    v10 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v11 = v9;
    *a4 = v9;
  }

LABEL_7:

  return v10;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedSmartAlbum
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  if (self->_userQuery)
  {
    v5 = [MEMORY[0x1E69BE708] dataFromQuery:?];
    xpc_dictionary_set_data(xdict, "userQuery", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

- (PHSmartAlbumChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PHSmartAlbumChangeRequest;
  v11 = [(PHChangeRequest *)&v20 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      length = 0;
      data = xpc_dictionary_get_data(v8, "userQuery", &length);
      if (length)
      {
        v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
        v16 = [MEMORY[0x1E69BE708] constructQueryFromData:v15];
        userQuery = v11->_userQuery;
        v11->_userQuery = v16;
      }
    }
  }

  return v11;
}

- (PHSmartAlbumChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHSmartAlbumChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;
  }

  return v8;
}

- (id)initForNewObject
{
  v6.receiver = self;
  v6.super_class = PHSmartAlbumChangeRequest;
  v2 = [(PHChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;
  }

  return v2;
}

- (void)setCustomSortAscending:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortAscending"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setCustomSortKey:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortKey"];

  LODWORD(v3) = [v5 intValue];
  return v3;
}

+ (void)_deleteSmartAlbums:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [PHObject assertAllObjects:v7 forSelector:a5 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:a4, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (id)validateSmartAlbumTitle:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AB08];
  v6 = a3;
  v7 = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v9;
    *a4 = v9;
  }

LABEL_7:

  return v8;
}

+ (id)creationRequestForSmartAlbumCopyFromSmartAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 assetCollectionType] == 2)
  {
    v4 = [v3 title];
    v5 = [v3 userQuery];
    v6 = [PHSmartAlbumChangeRequest creationRequestForSmartAlbumWithTitle:v4 userQuery:v5];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Asset collection type is not a smart album: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)creationRequestForSmartAlbumWithTitle:(id)a3 userQuery:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PHSmartAlbumChangeRequest alloc] initForNewObject];
  [v7 setTitle:v6];

  [v7 setUserQuery:v5];

  return v7;
}

+ (id)changeRequestForSmartAlbum:(id)a3
{
  v4 = a3;
  v5 = [v4 userQuery];
  v6 = [a1 _changeRequestForSmartAlbum:v4 userQuery:v5];

  return v6;
}

+ (id)_changeRequestForSmartAlbum:(id)a3 userQuery:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHSmartAlbumChangeRequest alloc];
    v9 = [v5 uuid];
    v10 = [v5 objectID];
    v7 = [(PHSmartAlbumChangeRequest *)v8 initWithUUID:v9 objectID:v10];

    if (v6)
    {
      [(PHSmartAlbumChangeRequest *)v7 setUserQuery:v6];
    }
  }

  return v7;
}

@end