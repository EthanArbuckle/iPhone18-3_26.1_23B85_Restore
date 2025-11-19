@interface PHMomentChangeRequest
+ (id)changeRequestForMoment:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (NSArray)localizedLocationNames;
- (NSString)subtitle;
- (NSString)title;
- (PHMomentChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHMomentChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (float)aggregationScore;
- (unsigned)processedLocation;
- (void)addAssetSearchEntityWithLabel:(id)a3 identifier:(id)a4 type:(unint64_t)a5 confidence:(double)a6 localeIdentifier:(id)a7 dateInterval:(id)a8 synonyms:(id)a9;
- (void)assignEmptyThemeWithAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4;
- (void)assignThemeNamed:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 confidence:(id)a6;
- (void)encodeToXPCDict:(id)a3;
- (void)resetThemeAssignmentVersions;
- (void)setAggregationScore:(float)a3;
- (void)setLocalizedLocationNames:(id)a3;
- (void)setProcessedLocation:(unsigned __int16)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PHMomentChangeRequest

- (void)setProcessedLocation:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"processedLocation"];
}

- (unsigned)processedLocation
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"processedLocation"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setLocalizedLocationNames:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"localizedLocationNames"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"localizedLocationNames"];
  }

  else
  {
    [v6 removeObjectForKey:@"localizedLocationNames"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"localizedLocationNames"];
  }
}

- (NSArray)localizedLocationNames
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"localizedLocationNames"];

  return v5;
}

- (void)setSubtitle:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"subtitle"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"subtitle"];
  }

  else
  {
    [v6 removeObjectForKey:@"subtitle"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"subtitle"];
  }
}

- (NSString)subtitle
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtitle"];

  return v5;
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

- (void)setAggregationScore:(float)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  *&v6 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  [v8 setObject:v9 forKeyedSubscript:@"aggregationScore"];
}

- (float)aggregationScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"aggregationScore"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v38 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v38];
  v10 = v38;

  if (!v9)
  {
    v11 = 0;
    goto LABEL_25;
  }

  if (self->_assetSearchEntities)
  {
    if (!v7)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(PHChangeRequest *)self objectID];
        v14 = [v13 pl_shortURI];
        *buf = 138543362;
        v41 = v14;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Expected to find a moment for objectID %{public}@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_10;
    }

    [MEMORY[0x1E69BE780] setAssetSearchEntitiesFromDictionaries:? onMoment:?];
  }

  v11 = 1;
LABEL_10:
  if (self->_shouldClearThemeAssignments)
  {
    [v7 clearThemeAssignments];
  }

  if ([(NSMutableArray *)self->_themeAssignments count])
  {
    v29 = v11;
    v30 = v10;
    v31 = self;
    v15 = v7;
    v32 = a5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_themeAssignments;
    v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"themeName"];
          v22 = [v20 objectForKeyedSubscript:@"version"];
          v23 = [v22 integerValue];
          v24 = [v20 objectForKeyedSubscript:@"uemVersion"];
          v25 = [v24 integerValue];
          v26 = [v20 objectForKeyedSubscript:@"confidence"];
          [v15 assignThemeNamed:v21 adapterVersion:v23 uemVersion:v25 withConfidence:v26];
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    self = v31;
    a5 = v32;
    v7 = v15;
    v10 = v30;
    v11 = v29;
  }

  else if (self->_shouldAssignEmptyThemePlaceholder)
  {
    [v7 assignEmptyThemesWithAdapterVersion:self->_adapterVersionForEmptyThemeAssignment uemVersion:self->_uemVersionForEmptyThemeAssignment];
  }

  if (self->_shouldOverwriteExistingThemeVersions)
  {
    [v7 setThemeAssignmentsToAdapterVersion:self->_adapterVersionForVersionOverwrite uemVersion:self->_uemVersionForVersionOverwrite];
  }

LABEL_25:
  if (a5 && !v11)
  {
    v27 = v10;
    *a5 = v10;
  }

  return v11;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [v10 allowMutationToManagedObject:v9 propertyKey:v8 error:&v15];

  v12 = v15;
  if (a5 && (v11 & 1) == 0)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (PHMomentChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PHMomentChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [MEMORY[0x1E695DF70] array];
    themeAssignments = v8->_themeAssignments;
    v8->_themeAssignments = v11;
  }

  return v8;
}

- (void)resetThemeAssignmentVersions
{
  self->_shouldOverwriteExistingThemeVersions = 1;
  self->_adapterVersionForVersionOverwrite = 0;
  self->_uemVersionForVersionOverwrite = 0;
  [(PHChangeRequest *)self didMutate];
}

- (void)assignEmptyThemeWithAdapterVersion:(int64_t)a3 uemVersion:(int64_t)a4
{
  self->_shouldClearThemeAssignments = 1;
  self->_shouldAssignEmptyThemePlaceholder = 1;
  self->_adapterVersionForEmptyThemeAssignment = a3;
  self->_uemVersionForEmptyThemeAssignment = a4;
  [(PHChangeRequest *)self didMutate];
}

- (void)assignThemeNamed:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 confidence:(id)a6
{
  v19 = a3;
  v11 = a6;
  if (v19)
  {
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (!v11)
    {
      goto LABEL_6;
    }
  }

  [v11 floatValue];
  if (v12 <= 0.0 || ([v11 floatValue], v13 > 1.0))
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"!confidence || (confidence.floatValue > 0.0 && confidence.floatValue <= 1.0)"}];
  }

LABEL_6:
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v15 setObject:v19 forKeyedSubscript:@"themeName"];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v15 setObject:v16 forKeyedSubscript:@"version"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v15 setObject:v17 forKeyedSubscript:@"uemVersion"];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"confidence"];
  }

  [(NSMutableArray *)self->_themeAssignments addObject:v15];
  [(PHChangeRequest *)self didMutate];
}

- (void)addAssetSearchEntityWithLabel:(id)a3 identifier:(id)a4 type:(unint64_t)a5 confidence:(double)a6 localeIdentifier:(id)a7 dateInterval:(id)a8 synonyms:(id)a9
{
  v31 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!a5)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:137 description:@"Must specify a type"];
  }

  if (!(v31 | v17))
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:138 description:@"Must specify a label or identifier"];
  }

  v21 = [MEMORY[0x1E695DF90] dictionary];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v21 setObject:v22 forKeyedSubscript:@"type"];

  [v21 setObject:v31 forKeyedSubscript:@"label"];
  [v21 setObject:v17 forKeyedSubscript:@"identifier"];
  if (a6 > 0.0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    [v21 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BEE58]];
  }

  v24 = [v19 startDate];
  [v21 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BEE68]];

  v25 = [v19 endDate];
  [v21 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BEE60]];

  [v21 setObject:v20 forKeyedSubscript:@"synonyms"];
  [v21 setObject:v18 forKeyedSubscript:@"localeIdentifier"];
  assetSearchEntities = self->_assetSearchEntities;
  if (!assetSearchEntities)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = self->_assetSearchEntities;
    self->_assetSearchEntities = v27;

    assetSearchEntities = self->_assetSearchEntities;
  }

  [(NSMutableArray *)assetSearchEntities addObject:v21];
  [(PHChangeRequest *)self didMutate];
}

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:xdict];

  if (self->_assetSearchEntities)
  {
    PLXPCDictionarySetArray();
  }

  if (self->_themeAssignments)
  {
    PLXPCDictionarySetArray();
  }

  v5 = xdict;
  if (self->_shouldClearThemeAssignments)
  {
    xpc_dictionary_set_BOOL(xdict, "shouldClearThemeAssignments", 1);
    v5 = xdict;
  }

  if (self->_shouldAssignEmptyThemePlaceholder)
  {
    xpc_dictionary_set_BOOL(xdict, "shouldSetNoThemesPlaceholder", 1);
    xpc_dictionary_set_int64(xdict, "adapterVersionForEmptyThemeAssignment", self->_adapterVersionForEmptyThemeAssignment);
    xpc_dictionary_set_int64(xdict, "uemVersionForEmptyThemeAssignment", self->_uemVersionForEmptyThemeAssignment);
    v5 = xdict;
  }

  if (self->_shouldOverwriteExistingThemeVersions)
  {
    xpc_dictionary_set_BOOL(xdict, "shouldOverwriteExistingVersions", 1);
    xpc_dictionary_set_int64(xdict, "adapterVersionForOverwrite", self->_adapterVersionForVersionOverwrite);
    xpc_dictionary_set_int64(xdict, "uemVersionForOverwrite", self->_uemVersionForVersionOverwrite);
    v5 = xdict;
  }
}

- (PHMomentChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = PHMomentChangeRequest;
  v11 = [(PHChangeRequest *)&v30 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __69__PHMomentChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
    v27 = &unk_1E75AAEB0;
    v14 = v11;
    v28 = v14;
    v29 = v9;
    v15 = _Block_copy(&v24);
    v16 = PLArrayFromXPCDictionary();
    v17 = [v16 mutableCopy];
    assetSearchEntities = v14->_assetSearchEntities;
    v14->_assetSearchEntities = v17;

    v19 = PLArrayFromXPCDictionary();
    v20 = [v19 mutableCopy];
    themeAssignments = v14->_themeAssignments;
    v14->_themeAssignments = v20;

    if (v14->_assetSearchEntities)
    {
      v15[2](v15);
    }

    if ([(NSMutableArray *)v14->_themeAssignments count])
    {
      v15[2](v15);
    }

    v14->_shouldClearThemeAssignments = xpc_dictionary_get_BOOL(v8, "shouldClearThemeAssignments");
    v14->_shouldAssignEmptyThemePlaceholder = xpc_dictionary_get_BOOL(v8, "shouldSetNoThemesPlaceholder");
    v14->_adapterVersionForEmptyThemeAssignment = xpc_dictionary_get_int64(v8, "adapterVersionForEmptyThemeAssignment");
    v14->_uemVersionForEmptyThemeAssignment = xpc_dictionary_get_int64(v8, "uemVersionForEmptyThemeAssignment");
    v22 = xpc_dictionary_get_BOOL(v8, "shouldOverwriteExistingVersions");
    v14->_shouldOverwriteExistingThemeVersions = v22;
    if (v22)
    {
      v14->_adapterVersionForVersionOverwrite = xpc_dictionary_get_int64(v8, "adapterVersionForOverwrite");
      v14->_uemVersionForVersionOverwrite = xpc_dictionary_get_int64(v8, "uemVersionForOverwrite");
    }

    if (v14->_shouldClearThemeAssignments || v14->_shouldAssignEmptyThemePlaceholder || v14->_shouldOverwriteExistingThemeVersions)
    {
      v15[2](v15);
    }
  }

  return v11;
}

uint64_t __69__PHMomentChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

+ (id)changeRequestForMoment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMomentChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHMomentChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end