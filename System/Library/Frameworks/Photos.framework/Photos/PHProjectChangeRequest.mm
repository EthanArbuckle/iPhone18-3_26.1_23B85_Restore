@interface PHProjectChangeRequest
+ (id)creationRequestForProjectCopyFromProject:(id)project;
+ (id)creationRequestForProjectWithDocumentType:(id)type projectExtensionIdentifier:(id)identifier;
+ (id)creationRequestForProjectWithDocumentType:(id)type projectExtensionIdentifier:(id)identifier assets:(id)assets title:(id)title;
+ (void)_deleteProjects:(id)projects withOperation:(int64_t)operation;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)prepareForServicePreflightCheck:(id *)check;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSData)projectExtensionData;
- (NSString)projectDocumentType;
- (NSString)title;
- (PHProjectChangeRequest)initWithProject:(PHProject *)project;
- (PHProjectChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHProjectChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)placeholderForCreatedProject;
- (id)projectExtensionIdentifier;
- (id)projectRenderUuid;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareKeyAssetIDIfNeeded;
- (void)addAssets:(id)assets;
- (void)encodeToXPCDict:(id)dict;
- (void)insertAssets:(id)assets atIndexes:(id)indexes;
- (void)moveAssetsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeAssets:(id)assets;
- (void)removeAssetsAtIndexes:(id)indexes;
- (void)replaceAssetsAtIndexes:(id)indexes withAssets:(id)assets;
- (void)setAssets:(id)assets;
- (void)setKeyAsset:(PHAsset *)keyAsset;
- (void)setProjectDocumentType:(id)type;
- (void)setProjectExtensionData:(NSData *)projectExtensionData;
- (void)setProjectExtensionIdentifier:(id)identifier;
- (void)setProjectPreviewImage:(UIImage *)previewImage;
- (void)setProjectRenderUuid:(id)uuid;
- (void)setTitle:(NSString *)title;
@end

@implementation PHProjectChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = self->super._helper;
  v34 = 0;
  v9 = [(PHChangeRequestHelper *)helper applyMutationsToManagedObject:objectCopy error:&v34];
  v10 = v34;
  assetsHelper = [(PHProjectChangeRequest *)self assetsHelper];
  v12 = objectCopy;
  if (!v9)
  {
    goto LABEL_9;
  }

  mutableObjectIDsAndUUIDs = [assetsHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs)
  {
    [assetsHelper setAllowsInsert:1];
    [assetsHelper setAllowsRemove:1];
    [assetsHelper setAllowsMove:1];
    entityName = [MEMORY[0x1E69BE540] entityName];
    [assetsHelper setDestinationEntityName:entityName];

    relationshipName = [assetsHelper relationshipName];
    v16 = [v12 mutableOrderedSetValueForKey:relationshipName];

    v33 = v10;
    v17 = [assetsHelper applyMutationsToManagedObject:v12 orderedMutableChildren:v16 error:&v33];
    v18 = v33;

    if (!v17)
    {
      v19 = 0;
      v10 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    v18 = v10;
  }

  keyAssetHelper = [(PHProjectChangeRequest *)self keyAssetHelper];
  mutableObjectIDsAndUUIDs2 = [keyAssetHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs2)
  {

    goto LABEL_16;
  }

  [keyAssetHelper setAllowsInsert:1];
  entityName2 = [MEMORY[0x1E69BE540] entityName];
  [keyAssetHelper setDestinationEntityName:entityName2];

  v32 = v18;
  v23 = [keyAssetHelper applyMutationsToManagedObjectToOneRelationship:v12 error:&v32];
  v10 = v32;

  if (!v23)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v18 = v10;
LABEL_16:
  if (!self->_didSetPreviewImage)
  {
    v19 = 1;
    goto LABEL_14;
  }

  previewImageData = self->_previewImageData;
  v31 = v18;
  v19 = [v12 setProjectPreviewImageData:previewImageData error:&v31];
  v27 = v31;

  if (v27)
  {
    v28 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    localizedDescription = [v27 localizedDescription];
    v36[0] = localizedDescription;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v10 = [v28 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v30];
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  if (error && (v19 & 1) == 0)
  {
    v24 = v10;
    v19 = 0;
    *error = v10;
  }

  v18 = v10;
LABEL_14:

  return v19;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  helper = self->super._helper;
  v10 = 0;
  v7 = [(PHChangeRequestHelper *)helper allowMutationToManagedObject:object propertyKey:key error:&v10];
  v8 = v10;
  if (error && !v7)
  {
    v8 = v8;
    *error = v8;
  }

  return v7;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  v9 = 0;
  if (uuid)
  {
    v7 = uuid;
    projectDocumentType = [(PHProjectChangeRequest *)self projectDocumentType];

    if (projectDocumentType)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE6F0];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  projectDocumentType = [(PHProjectChangeRequest *)self projectDocumentType];
  projectExtensionIdentifier = [(PHProjectChangeRequest *)self projectExtensionIdentifier];
  v11 = [v6 insertIntoPhotoLibrary:libraryCopy withUUID:uuid documentType:projectDocumentType projectExtensionIdentifier:projectExtensionIdentifier];

  if (error && !v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create project"];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  return v11;
}

- (BOOL)prepareForServicePreflightCheck:(id *)check
{
  mutations = [(PHChangeRequestHelper *)self->super._helper mutations];
  v6 = [mutations objectForKeyedSubscript:@"projectData"];

  if ([v6 length] <= 0x500000)
  {
    v11.receiver = self;
    v11.super_class = PHProjectChangeRequest;
    v12 = 0;
    v8 = [(PHChangeRequest *)&v11 prepareForServicePreflightCheck:&v12];
    v7 = v12;
    if (!check)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"projectExtensionData length exceeds maximum"];
    v8 = 0;
    if (!check)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v7;
    *check = v7;
  }

LABEL_7:

  return v8;
}

- (PHProjectChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v31.receiver = self;
  v31.super_class = PHProjectChangeRequest;
  v11 = [(PHChangeRequest *)&v31 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __70__PHProjectChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
      v28 = &unk_1E75AAEB0;
      v14 = v11;
      v29 = v14;
      v30 = requestCopy;
      v15 = _Block_copy(&v25);
      v16 = [PHRelationshipChangeRequestHelper alloc];
      v17 = [(PHRelationshipChangeRequestHelper *)v16 initWithRelationshipName:@"assets" xpcDict:dictCopy changeRequestHelper:v11->super._helper, v25, v26, v27, v28];
      assetsHelper = v14->_assetsHelper;
      v14->_assetsHelper = v17;

      v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      keyAssetHelper = v14->_keyAssetHelper;
      v14->_keyAssetHelper = v19;

      v21 = xpc_dictionary_get_BOOL(dictCopy, "didSetPreviewImage");
      v14->_didSetPreviewImage = v21;
      if (v21)
      {
        v15[2](v15);
        v22 = PLDataFromXPCDictionary();
        previewImageData = v14->_previewImageData;
        v14->_previewImageData = v22;
      }
    }
  }

  return v11;
}

uint64_t __70__PHProjectChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  [(PHChangeRequestHelper *)self->super._helper encodeToXPCDict:xdict];
  [(PHRelationshipChangeRequestHelper *)self->_assetsHelper encodeToXPCDict:xdict];
  [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper encodeToXPCDict:xdict];
  xpc_dictionary_set_BOOL(xdict, "didSetPreviewImage", self->_didSetPreviewImage);
  if (self->_didSetPreviewImage)
  {
    PLXPCDictionarySetData();
  }
}

- (void)moveAssetsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    v7 = [mutableObjectIDsAndUUIDs objectsAtIndexes:indexesCopy];
    [mutableObjectIDsAndUUIDs removeObjectsAtIndexes:indexesCopy];
    v8 = [indexesCopy count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{index, v8}];
    [mutableObjectIDsAndUUIDs insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceAssetsAtIndexes:(id)indexes withAssets:(id)assets
{
  indexesCopy = indexes;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs replaceObjectsAtIndexes:indexesCopy withObjects:v6];
  }
}

- (void)removeAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs removeObjectsAtIndexes:indexesCopy];
  }
}

- (void)removeAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)insertAssets:(id)assets atIndexes:(id)indexes
{
  indexesCopy = indexes;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs insertObjects:v6 atIndexes:indexesCopy];
  }
}

- (void)addAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)_prepareAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];
  if (!originalObjectIDs)
  {
    originalProject = self->_originalProject;
    if (!originalProject)
    {
      goto LABEL_7;
    }

    originalObjectIDs = [PHQuery queryForAssetsInAssetCollection:originalProject options:0];
    executeQuery = [originalObjectIDs executeQuery];
    assetsHelper = self->_assetsHelper;
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setOriginalObjectIDs:fetchedObjectIDs];

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      v9 = self->_assetsHelper;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PHRelationshipChangeRequestHelper *)v9 setOriginalObjectIDs:v10];
    }
  }

LABEL_7:
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    v12 = self->_assetsHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)v12 originalObjectIDs];
    v13 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)v12 setMutableObjectIDsAndUUIDs:v13];
  }
}

- (void)setKeyAsset:(PHAsset *)keyAsset
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = keyAsset;
  v5 = PLObjectIDOrUUIDFromPHObject(v4);
  if (v5)
  {
    if (self->_originalProject || (-[PHChangeRequest helper](self, "helper"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isNewRequest], v6, v7))
    {
      [(PHChangeRequest *)self didMutate];
      [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
      assetsHelper = [(PHProjectChangeRequest *)self assetsHelper];
      mutableObjectIDsAndUUIDs = [assetsHelper mutableObjectIDsAndUUIDs];

      if (([mutableObjectIDsAndUUIDs containsObject:v4] & 1) == 0)
      {
        v13[0] = v4;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [(PHProjectChangeRequest *)self addAssets:v10];
      }

      [(PHProjectChangeRequest *)self _prepareKeyAssetIDIfNeeded];
      mutableObjectIDsAndUUIDs2 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];
      [mutableObjectIDsAndUUIDs2 removeAllObjects];

      mutableObjectIDsAndUUIDs3 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];
      [mutableObjectIDsAndUUIDs3 addObject:v5];
    }
  }
}

- (void)_prepareKeyAssetIDIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    keyAssetHelper = self->_keyAssetHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)keyAssetHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyAssetHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (id)placeholderForCreatedProject
{
  helper = self->super._helper;
  v4 = objc_opt_class();

  return [(PHChangeRequestHelper *)helper placeholderForCreatedObjectWithClass:v4 changeRequest:self];
}

- (void)setProjectPreviewImage:(UIImage *)previewImage
{
  v8 = previewImage;
  [(PHChangeRequest *)self didMutate];
  self->_didSetPreviewImage = 1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  identifier = [*MEMORY[0x1E6983008] identifier];
  v6 = CGImageDestinationCreateWithData(v4, identifier, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, [(UIImage *)v8 CGImage], 0);
    CGImageDestinationFinalize(v6);
    CFRelease(v6);
  }

  previewImageData = self->_previewImageData;
  self->_previewImageData = v4;
}

- (void)setAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v7 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    assetsHelper = self->_assetsHelper;
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setMutableObjectIDsAndUUIDs:v6];

    v4 = v7;
  }
}

- (void)setProjectRenderUuid:(id)uuid
{
  uuidCopy = uuid;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (uuidCopy)
  {
    [mutations setObject:uuidCopy forKeyedSubscript:@"projectRenderUuid"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"projectRenderUuid"];
  }

  else
  {
    [mutations removeObjectForKey:@"projectRenderUuid"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"projectRenderUuid"];
  }
}

- (id)projectRenderUuid
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"projectRenderUuid"];

  return v5;
}

- (void)setProjectExtensionData:(NSData *)projectExtensionData
{
  v10 = projectExtensionData;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (v10)
  {
    [mutations setObject:v10 forKeyedSubscript:@"projectData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"projectData"];
  }

  else
  {
    [mutations removeObjectForKey:@"projectData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"projectData"];
  }
}

- (NSData)projectExtensionData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  data = [mutations objectForKey:@"projectData"];

  if (!data)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

- (void)setProjectExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"projectExtensionIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"projectExtensionIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"projectExtensionIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"projectExtensionIdentifier"];
  }
}

- (id)projectExtensionIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"projectExtensionIdentifier"];

  return v5;
}

- (void)setProjectDocumentType:(id)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (typeCopy)
  {
    [mutations setObject:typeCopy forKeyedSubscript:@"projectDocumentType"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"projectDocumentType"];
  }

  else
  {
    [mutations removeObjectForKey:@"projectDocumentType"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"projectDocumentType"];
  }
}

- (NSString)projectDocumentType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"projectDocumentType"];

  return v5;
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (v10)
  {
    [mutations setObject:v10 forKeyedSubscript:@"title"];

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

- (id)initForNewObject
{
  v10.receiver = self;
  v10.super_class = PHProjectChangeRequest;
  v2 = [(PHChangeRequest *)&v10 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" changeRequestHelper:v2->super._helper];
    assetsHelper = v2->_assetsHelper;
    v2->_assetsHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" changeRequestHelper:v2->super._helper];
    keyAssetHelper = v2->_keyAssetHelper;
    v2->_keyAssetHelper = v7;
  }

  return v2;
}

- (PHProjectChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHProjectChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" changeRequestHelper:v8->super._helper];
    assetsHelper = v8->_assetsHelper;
    v8->_assetsHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" changeRequestHelper:v8->super._helper];
    keyAssetHelper = v8->_keyAssetHelper;
    v8->_keyAssetHelper = v13;
  }

  return v8;
}

- (PHProjectChangeRequest)initWithProject:(PHProject *)project
{
  v4 = project;
  v5 = [PHProjectChangeRequest alloc];
  uuid = [(PHObject *)v4 uuid];
  objectID = [(PHObject *)v4 objectID];
  v8 = [(PHProjectChangeRequest *)v5 initWithUUID:uuid objectID:objectID];

  [(PHProjectChangeRequest *)v8 _setOriginalProject:v4];
  return v8;
}

+ (void)_deleteProjects:(id)projects withOperation:(int64_t)operation
{
  v18 = *MEMORY[0x1E69E9840];
  projectsCopy = projects;
  [PHObject assertAllObjects:projectsCopy forSelector:a2 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = projectsCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v13 + 1) + 8 * v11++) operation:operation, v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)creationRequestForProjectCopyFromProject:(id)project
{
  v41 = *MEMORY[0x1E69E9840];
  projectCopy = project;
  if ([projectCopy assetCollectionType] == 10)
  {
    photoLibrary = [projectCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v6 = [PHAsset fetchAssetsInAssetCollection:projectCopy options:librarySpecificFetchOptions];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__20352;
    v39 = __Block_byref_object_dispose__20353;
    v40 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__20352;
    v34 = __Block_byref_object_dispose__20353;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__20352;
    v28 = __Block_byref_object_dispose__20353;
    v29 = 0;
    photoLibrary2 = [projectCopy photoLibrary];
    v7PhotoLibrary = [photoLibrary2 photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__PHProjectChangeRequest_creationRequestForProjectCopyFromProject___block_invoke;
    v19[3] = &unk_1E75A9D28;
    v9 = projectCopy;
    v20 = v9;
    p_buf = &buf;
    v22 = &v30;
    v23 = &v24;
    [v7PhotoLibrary performBlockAndWait:v19];

    v10 = *(*(&buf + 1) + 40);
    v11 = v31[5];
    title = [v9 title];
    v13 = [PHProjectChangeRequest creationRequestForProjectWithDocumentType:v10 projectExtensionIdentifier:v11 assets:v6 title:title];

    [v13 setProjectData:v25[5]];
    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    v18 = 0;
    v15 = [0 duplicateProjectPreviewImageData:uUIDString error:&v18];
    v16 = v18;

    if (v15)
    {
      [v13 setProjectRenderUuid:uUIDString];
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    librarySpecificFetchOptions = PLPhotoKitGetLog();
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = projectCopy;
      _os_log_impl(&dword_19C86F000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "Asset collection type is not a project: %@", &buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void __67__PHProjectChangeRequest_creationRequestForProjectCopyFromProject___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE458];
  v3 = [*(a1 + 32) objectID];
  v4 = [*(a1 + 32) photoLibrary];
  v5 = [v4 photoLibrary];
  v15 = [v2 albumWithObjectID:v3 inLibrary:v5];

  v6 = [v15 projectDocumentType];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v15 projectExtensionIdentifier];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v15 projectData];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

+ (id)creationRequestForProjectWithDocumentType:(id)type projectExtensionIdentifier:(id)identifier assets:(id)assets title:(id)title
{
  titleCopy = title;
  assetsCopy = assets;
  identifierCopy = identifier;
  typeCopy = type;
  initForNewObject = [[PHProjectChangeRequest alloc] initForNewObject];
  [initForNewObject setProjectDocumentType:typeCopy];

  [initForNewObject setProjectExtensionIdentifier:identifierCopy];
  [initForNewObject setAssets:assetsCopy];

  [initForNewObject setTitle:titleCopy];

  return initForNewObject;
}

+ (id)creationRequestForProjectWithDocumentType:(id)type projectExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  initForNewObject = [[PHProjectChangeRequest alloc] initForNewObject];
  [initForNewObject setProjectDocumentType:typeCopy];

  [initForNewObject setProjectExtensionIdentifier:identifierCopy];

  return initForNewObject;
}

@end