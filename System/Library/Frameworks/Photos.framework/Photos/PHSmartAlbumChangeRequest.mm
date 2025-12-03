@interface PHSmartAlbumChangeRequest
+ (id)_changeRequestForSmartAlbum:(id)album userQuery:(id)query;
+ (id)changeRequestForSmartAlbum:(id)album;
+ (id)creationRequestForSmartAlbumCopyFromSmartAlbum:(id)album;
+ (id)creationRequestForSmartAlbumWithTitle:(id)title userQuery:(id)query;
+ (id)validateSmartAlbumTitle:(id)title error:(id *)error;
+ (void)_deleteSmartAlbums:(id)albums withOperation:(int64_t)operation topLevelSelector:(SEL)selector;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)customSortAscending;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSString)title;
- (PHObjectPlaceholder)placeholderForCreatedSmartAlbum;
- (PHSmartAlbumChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHSmartAlbumChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)description;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)encodeToXPCDict:(id)dict;
- (void)setCustomSortAscending:(BOOL)ascending;
- (void)setCustomSortKey:(unsigned int)key;
- (void)setTitle:(id)title;
@end

@implementation PHSmartAlbumChangeRequest

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHSmartAlbumChangeRequest;
  v3 = [(PHSmartAlbumChangeRequest *)&v8 description];
  title = [(PHSmartAlbumChangeRequest *)self title];
  userQuery = [(PHSmartAlbumChangeRequest *)self userQuery];
  v6 = [v3 stringByAppendingFormat:@" title=%@ userQuery=%@", title, userQuery];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  managedObjectContext = [objectCopy managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (!v9)
  {
    v14 = 0;
    goto LABEL_12;
  }

  entity = [objectCopy entity];
  v11 = [entity isKindOfEntity:v9];

  if (!v11 || [objectCopy kindValue] != 1507)
  {
    v20 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid album type"];
    v27[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v22];

LABEL_9:
    if (error)
    {
      v23 = v14;
      v19 = 0;
      *error = v14;
      goto LABEL_13;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  helper = [(PHChangeRequest *)self helper];
  v25 = 0;
  v13 = [helper applyMutationsToManagedObject:objectCopy error:&v25];
  v14 = v25;

  if (!v13)
  {
    goto LABEL_9;
  }

  userQuery = self->_userQuery;
  if (userQuery)
  {
    v16 = MEMORY[0x1E69BE708];
    v17 = objectCopy;
    v18 = [v16 dataFromQuery:userQuery];
    [v17 setUserQueryData:v18];
  }

  v19 = 1;
LABEL_13:

  return v19;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  helper = [(PHChangeRequest *)self helper];
  v23 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v23];
  v12 = v23;

  if (v11)
  {
    if (([keyCopy isEqualToString:@"title"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"customSortKey") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"customSortAscending"))
    {
      if ([objectCopy canPerformEditOperation:64])
      {
        v13 = 1;
        goto LABEL_13;
      }

      v14 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", keyCopy];
      v27[0] = keyCopy;
      v16 = MEMORY[0x1E695DF20];
      v17 = v27;
      v18 = &v26;
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", keyCopy];
      v25 = keyCopy;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v25;
      v18 = &v24;
    }

    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v20 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v19];

    v12 = v20;
  }

  if (error)
  {
    v21 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69BE458] insertNewSmartAlbumIntoLibrary:library];
  uuid = [(PHChangeRequest *)self uuid];
  [v6 setUuid:uuid];

  if (error && !v6)
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create asset collection"];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v8 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v10];
  }

  return v6;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  if (self->_userQuery)
  {
    title = [(PHSmartAlbumChangeRequest *)self title];
    v13 = 0;
    v8 = [objc_opt_class() validateSmartAlbumTitle:title error:&v13];
    v9 = v13;

    v10 = v8 != 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Smart Album doesn't allow nil query"];
    v10 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v11 = v9;
    *error = v9;
  }

LABEL_7:

  return v10;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (titleCopy)
  {
    [mutations setObject:titleCopy forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (PHObjectPlaceholder)placeholderForCreatedSmartAlbum
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

  if (self->_userQuery)
  {
    v5 = [MEMORY[0x1E69BE708] dataFromQuery:?];
    xpc_dictionary_set_data(xdict, "userQuery", [v5 bytes], objc_msgSend(v5, "length"));
  }
}

- (PHSmartAlbumChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v20.receiver = self;
  v20.super_class = PHSmartAlbumChangeRequest;
  v11 = [(PHChangeRequest *)&v20 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      length = 0;
      data = xpc_dictionary_get_data(dictCopy, "userQuery", &length);
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

- (PHSmartAlbumChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PHSmartAlbumChangeRequest;
  v8 = [(PHChangeRequest *)&v12 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

- (void)setCustomSortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortAscending"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setCustomSortKey:(unsigned int)key
{
  v3 = *&key;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortKey"];

  LODWORD(helper) = [v5 intValue];
  return helper;
}

+ (void)_deleteSmartAlbums:(id)albums withOperation:(int64_t)operation topLevelSelector:(SEL)selector
{
  v19 = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  [PHObject assertAllObjects:albumsCopy forSelector:selector areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = albumsCopy;
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

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:operation, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (id)validateSmartAlbumTitle:(id)title error:(id *)error
{
  v5 = MEMORY[0x1E696AB08];
  titleCopy = title;
  whitespaceAndNewlineCharacterSet = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v8 length])
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

+ (id)creationRequestForSmartAlbumCopyFromSmartAlbum:(id)album
{
  v11 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  if ([albumCopy assetCollectionType] == 2)
  {
    title = [albumCopy title];
    userQuery = [albumCopy userQuery];
    v6 = [PHSmartAlbumChangeRequest creationRequestForSmartAlbumWithTitle:title userQuery:userQuery];
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = albumCopy;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Asset collection type is not a smart album: %@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)creationRequestForSmartAlbumWithTitle:(id)title userQuery:(id)query
{
  queryCopy = query;
  titleCopy = title;
  initForNewObject = [[PHSmartAlbumChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];

  [initForNewObject setUserQuery:queryCopy];

  return initForNewObject;
}

+ (id)changeRequestForSmartAlbum:(id)album
{
  albumCopy = album;
  userQuery = [albumCopy userQuery];
  v6 = [self _changeRequestForSmartAlbum:albumCopy userQuery:userQuery];

  return v6;
}

+ (id)_changeRequestForSmartAlbum:(id)album userQuery:(id)query
{
  albumCopy = album;
  queryCopy = query;
  if ([albumCopy isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHSmartAlbumChangeRequest alloc];
    uuid = [albumCopy uuid];
    objectID = [albumCopy objectID];
    v7 = [(PHSmartAlbumChangeRequest *)v8 initWithUUID:uuid objectID:objectID];

    if (queryCopy)
    {
      [(PHSmartAlbumChangeRequest *)v7 setUserQuery:queryCopy];
    }
  }

  return v7;
}

@end