@interface PHProjectChangeRequest
+ (id)creationRequestForProjectCopyFromProject:(id)a3;
+ (id)creationRequestForProjectWithDocumentType:(id)a3 projectExtensionIdentifier:(id)a4;
+ (id)creationRequestForProjectWithDocumentType:(id)a3 projectExtensionIdentifier:(id)a4 assets:(id)a5 title:(id)a6;
+ (void)_deleteProjects:(id)a3 withOperation:(int64_t)a4;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)prepareForServicePreflightCheck:(id *)a3;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSData)projectExtensionData;
- (NSString)projectDocumentType;
- (NSString)title;
- (PHProjectChangeRequest)initWithProject:(PHProject *)project;
- (PHProjectChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHProjectChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)placeholderForCreatedProject;
- (id)projectExtensionIdentifier;
- (id)projectRenderUuid;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareKeyAssetIDIfNeeded;
- (void)addAssets:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)insertAssets:(id)a3 atIndexes:(id)a4;
- (void)moveAssetsAtIndexes:(id)a3 toIndex:(unint64_t)a4;
- (void)removeAssets:(id)assets;
- (void)removeAssetsAtIndexes:(id)a3;
- (void)replaceAssetsAtIndexes:(id)a3 withAssets:(id)a4;
- (void)setAssets:(id)a3;
- (void)setKeyAsset:(PHAsset *)keyAsset;
- (void)setProjectDocumentType:(id)a3;
- (void)setProjectExtensionData:(NSData *)projectExtensionData;
- (void)setProjectExtensionIdentifier:(id)a3;
- (void)setProjectPreviewImage:(UIImage *)previewImage;
- (void)setProjectRenderUuid:(id)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation PHProjectChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  helper = self->super._helper;
  v34 = 0;
  v9 = [(PHChangeRequestHelper *)helper applyMutationsToManagedObject:v7 error:&v34];
  v10 = v34;
  v11 = [(PHProjectChangeRequest *)self assetsHelper];
  v12 = v7;
  if (!v9)
  {
    goto LABEL_9;
  }

  v13 = [v11 mutableObjectIDsAndUUIDs];

  if (v13)
  {
    [v11 setAllowsInsert:1];
    [v11 setAllowsRemove:1];
    [v11 setAllowsMove:1];
    v14 = [MEMORY[0x1E69BE540] entityName];
    [v11 setDestinationEntityName:v14];

    v15 = [v11 relationshipName];
    v16 = [v12 mutableOrderedSetValueForKey:v15];

    v33 = v10;
    v17 = [v11 applyMutationsToManagedObject:v12 orderedMutableChildren:v16 error:&v33];
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

  v20 = [(PHProjectChangeRequest *)self keyAssetHelper];
  v21 = [v20 mutableObjectIDsAndUUIDs];

  if (!v21)
  {

    goto LABEL_16;
  }

  [v20 setAllowsInsert:1];
  v22 = [MEMORY[0x1E69BE540] entityName];
  [v20 setDestinationEntityName:v22];

  v32 = v18;
  v23 = [v20 applyMutationsToManagedObjectToOneRelationship:v12 error:&v32];
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
    v29 = [v27 localizedDescription];
    v36[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v10 = [v28 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v30];
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  if (a5 && (v19 & 1) == 0)
  {
    v24 = v10;
    v19 = 0;
    *a5 = v10;
  }

  v18 = v10;
LABEL_14:

  return v19;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  helper = self->super._helper;
  v10 = 0;
  v7 = [(PHChangeRequestHelper *)helper allowMutationToManagedObject:a3 propertyKey:a4 error:&v10];
  v8 = v10;
  if (a5 && !v7)
  {
    v8 = v8;
    *a5 = v8;
  }

  return v7;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PHChangeRequest *)self uuid];
  v9 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = [(PHProjectChangeRequest *)self projectDocumentType];

    if (v8)
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE6F0];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [(PHProjectChangeRequest *)self projectDocumentType];
  v10 = [(PHProjectChangeRequest *)self projectExtensionIdentifier];
  v11 = [v6 insertIntoPhotoLibrary:v7 withUUID:v8 documentType:v9 projectExtensionIdentifier:v10];

  if (a4 && !v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create project"];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [v12 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  return v11;
}

- (BOOL)prepareForServicePreflightCheck:(id *)a3
{
  v5 = [(PHChangeRequestHelper *)self->super._helper mutations];
  v6 = [v5 objectForKeyedSubscript:@"projectData"];

  if ([v6 length] <= 0x500000)
  {
    v11.receiver = self;
    v11.super_class = PHProjectChangeRequest;
    v12 = 0;
    v8 = [(PHChangeRequest *)&v11 prepareForServicePreflightCheck:&v12];
    v7 = v12;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"projectExtensionData length exceeds maximum"];
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v8;
}

- (PHProjectChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = PHProjectChangeRequest;
  v11 = [(PHChangeRequest *)&v31 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
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
      v30 = v9;
      v15 = _Block_copy(&v25);
      v16 = [PHRelationshipChangeRequestHelper alloc];
      v17 = [(PHRelationshipChangeRequestHelper *)v16 initWithRelationshipName:@"assets" xpcDict:v8 changeRequestHelper:v11->super._helper, v25, v26, v27, v28];
      assetsHelper = v14->_assetsHelper;
      v14->_assetsHelper = v17;

      v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" xpcDict:v8 changeRequestHelper:v11->super._helper];
      keyAssetHelper = v14->_keyAssetHelper;
      v14->_keyAssetHelper = v19;

      v21 = xpc_dictionary_get_BOOL(v8, "didSetPreviewImage");
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

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  [(PHChangeRequestHelper *)self->super._helper encodeToXPCDict:xdict];
  [(PHRelationshipChangeRequestHelper *)self->_assetsHelper encodeToXPCDict:xdict];
  [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper encodeToXPCDict:xdict];
  xpc_dictionary_set_BOOL(xdict, "didSetPreviewImage", self->_didSetPreviewImage);
  if (self->_didSetPreviewImage)
  {
    PLXPCDictionarySetData();
  }
}

- (void)moveAssetsAtIndexes:(id)a3 toIndex:(unint64_t)a4
{
  v10 = a3;
  if ([v10 count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    v6 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    v7 = [v6 objectsAtIndexes:v10];
    [v6 removeObjectsAtIndexes:v10];
    v8 = [v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a4, v8}];
    [v6 insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceAssetsAtIndexes:(id)a3 withAssets:(id)a4
{
  v8 = a3;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a4];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    v7 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [v7 replaceObjectsAtIndexes:v8 withObjects:v6];
  }
}

- (void)removeAssetsAtIndexes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    v4 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [v4 removeObjectsAtIndexes:v5];
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
    v5 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)insertAssets:(id)a3 atIndexes:(id)a4
{
  v8 = a4;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    v7 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [v7 insertObjects:v6 atIndexes:v8];
  }
}

- (void)addAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHProjectChangeRequest *)self _prepareAssetIDsIfNeeded];
    v5 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)_prepareAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];
  if (!v3)
  {
    originalProject = self->_originalProject;
    if (!originalProject)
    {
      goto LABEL_7;
    }

    v3 = [PHQuery queryForAssetsInAssetCollection:originalProject options:0];
    v5 = [v3 executeQuery];
    assetsHelper = self->_assetsHelper;
    v7 = [v5 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setOriginalObjectIDs:v7];

    v8 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

    if (!v8)
    {
      v9 = self->_assetsHelper;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PHRelationshipChangeRequestHelper *)v9 setOriginalObjectIDs:v10];
    }
  }

LABEL_7:
  v11 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];

  if (!v11)
  {
    v12 = self->_assetsHelper;
    v14 = [(PHRelationshipChangeRequestHelper *)v12 originalObjectIDs];
    v13 = [v14 mutableCopy];
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
      v8 = [(PHProjectChangeRequest *)self assetsHelper];
      v9 = [v8 mutableObjectIDsAndUUIDs];

      if (([v9 containsObject:v4] & 1) == 0)
      {
        v13[0] = v4;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [(PHProjectChangeRequest *)self addAssets:v10];
      }

      [(PHProjectChangeRequest *)self _prepareKeyAssetIDIfNeeded];
      v11 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];
      [v11 removeAllObjects];

      v12 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];
      [v12 addObject:v5];
    }
  }
}

- (void)_prepareKeyAssetIDIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    keyAssetHelper = self->_keyAssetHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)keyAssetHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
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
  v5 = [*MEMORY[0x1E6983008] identifier];
  v6 = CGImageDestinationCreateWithData(v4, v5, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, [(UIImage *)v8 CGImage], 0);
    CGImageDestinationFinalize(v6);
    CFRelease(v6);
  }

  previewImageData = self->_previewImageData;
  self->_previewImageData = v4;
}

- (void)setAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
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

- (void)setProjectRenderUuid:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"projectRenderUuid"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"projectRenderUuid"];
  }

  else
  {
    [v6 removeObjectForKey:@"projectRenderUuid"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"projectRenderUuid"];
  }
}

- (id)projectRenderUuid
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"projectRenderUuid"];

  return v5;
}

- (void)setProjectExtensionData:(NSData *)projectExtensionData
{
  v10 = projectExtensionData;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"projectData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"projectData"];
  }

  else
  {
    [v6 removeObjectForKey:@"projectData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"projectData"];
  }
}

- (NSData)projectExtensionData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"projectData"];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  return v5;
}

- (void)setProjectExtensionIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"projectExtensionIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"projectExtensionIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"projectExtensionIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"projectExtensionIdentifier"];
  }
}

- (id)projectExtensionIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"projectExtensionIdentifier"];

  return v5;
}

- (void)setProjectDocumentType:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"projectDocumentType"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"projectDocumentType"];
  }

  else
  {
    [v6 removeObjectForKey:@"projectDocumentType"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"projectDocumentType"];
  }
}

- (NSString)projectDocumentType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"projectDocumentType"];

  return v5;
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
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

- (PHProjectChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHProjectChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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
  v6 = [(PHObject *)v4 uuid];
  v7 = [(PHObject *)v4 objectID];
  v8 = [(PHProjectChangeRequest *)v5 initWithUUID:v6 objectID:v7];

  [(PHProjectChangeRequest *)v8 _setOriginalProject:v4];
  return v8;
}

+ (void)_deleteProjects:(id)a3 withOperation:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [PHObject assertAllObjects:v6 forSelector:a2 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
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

        v12 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v13 + 1) + 8 * v11++) operation:a4, v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)creationRequestForProjectCopyFromProject:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 assetCollectionType] == 10)
  {
    v4 = [v3 photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v6 = [PHAsset fetchAssetsInAssetCollection:v3 options:v5];
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
    v7 = [v3 photoLibrary];
    v8 = [v7 photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__PHProjectChangeRequest_creationRequestForProjectCopyFromProject___block_invoke;
    v19[3] = &unk_1E75A9D28;
    v9 = v3;
    v20 = v9;
    p_buf = &buf;
    v22 = &v30;
    v23 = &v24;
    [v8 performBlockAndWait:v19];

    v10 = *(*(&buf + 1) + 40);
    v11 = v31[5];
    v12 = [v9 title];
    v13 = [PHProjectChangeRequest creationRequestForProjectWithDocumentType:v10 projectExtensionIdentifier:v11 assets:v6 title:v12];

    [v13 setProjectData:v25[5]];
    v14 = [MEMORY[0x1E69BF320] UUIDString];
    v18 = 0;
    v15 = [0 duplicateProjectPreviewImageData:v14 error:&v18];
    v16 = v18;

    if (v15)
    {
      [v13 setProjectRenderUuid:v14];
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Asset collection type is not a project: %@", &buf, 0xCu);
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

+ (id)creationRequestForProjectWithDocumentType:(id)a3 projectExtensionIdentifier:(id)a4 assets:(id)a5 title:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PHProjectChangeRequest alloc] initForNewObject];
  [v13 setProjectDocumentType:v12];

  [v13 setProjectExtensionIdentifier:v11];
  [v13 setAssets:v10];

  [v13 setTitle:v9];

  return v13;
}

+ (id)creationRequestForProjectWithDocumentType:(id)a3 projectExtensionIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PHProjectChangeRequest alloc] initForNewObject];
  [v7 setProjectDocumentType:v6];

  [v7 setProjectExtensionIdentifier:v5];

  return v7;
}

@end