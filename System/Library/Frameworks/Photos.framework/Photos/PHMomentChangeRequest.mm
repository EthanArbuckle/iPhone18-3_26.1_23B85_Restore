@interface PHMomentChangeRequest
+ (id)changeRequestForMoment:(id)moment;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (NSArray)localizedLocationNames;
- (NSString)subtitle;
- (NSString)title;
- (PHMomentChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHMomentChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (float)aggregationScore;
- (unsigned)processedLocation;
- (void)addAssetSearchEntityWithLabel:(id)label identifier:(id)identifier type:(unint64_t)type confidence:(double)confidence localeIdentifier:(id)localeIdentifier dateInterval:(id)interval synonyms:(id)synonyms;
- (void)assignEmptyThemeWithAdapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion;
- (void)assignThemeNamed:(id)named adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion confidence:(id)confidence;
- (void)encodeToXPCDict:(id)dict;
- (void)resetThemeAssignmentVersions;
- (void)setAggregationScore:(float)score;
- (void)setLocalizedLocationNames:(id)names;
- (void)setProcessedLocation:(unsigned __int16)location;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PHMomentChangeRequest

- (void)setProcessedLocation:(unsigned __int16)location
{
  locationCopy = location;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:locationCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"processedLocation"];
}

- (unsigned)processedLocation
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"processedLocation"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setLocalizedLocationNames:(id)names
{
  namesCopy = names;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (namesCopy)
  {
    [mutations setObject:namesCopy forKeyedSubscript:@"localizedLocationNames"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"localizedLocationNames"];
  }

  else
  {
    [mutations removeObjectForKey:@"localizedLocationNames"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"localizedLocationNames"];
  }
}

- (NSArray)localizedLocationNames
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"localizedLocationNames"];

  return v5;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (subtitleCopy)
  {
    [mutations setObject:subtitleCopy forKeyedSubscript:@"subtitle"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"subtitle"];
  }

  else
  {
    [mutations removeObjectForKey:@"subtitle"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"subtitle"];
  }
}

- (NSString)subtitle
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtitle"];

  return v5;
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

- (void)setAggregationScore:(float)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  *&v6 = score;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v9 forKeyedSubscript:@"aggregationScore"];
}

- (float)aggregationScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"aggregationScore"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v38 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v38];
  v10 = v38;

  if (!v9)
  {
    v11 = 0;
    goto LABEL_25;
  }

  if (self->_assetSearchEntities)
  {
    if (!objectCopy)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        objectID = [(PHChangeRequest *)self objectID];
        pl_shortURI = [objectID pl_shortURI];
        *buf = 138543362;
        v41 = pl_shortURI;
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
    [objectCopy clearThemeAssignments];
  }

  if ([(NSMutableArray *)self->_themeAssignments count])
  {
    v29 = v11;
    v30 = v10;
    selfCopy = self;
    v15 = objectCopy;
    errorCopy = error;
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
          integerValue = [v22 integerValue];
          v24 = [v20 objectForKeyedSubscript:@"uemVersion"];
          integerValue2 = [v24 integerValue];
          v26 = [v20 objectForKeyedSubscript:@"confidence"];
          [v15 assignThemeNamed:v21 adapterVersion:integerValue uemVersion:integerValue2 withConfidence:v26];
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    self = selfCopy;
    error = errorCopy;
    objectCopy = v15;
    v10 = v30;
    v11 = v29;
  }

  else if (self->_shouldAssignEmptyThemePlaceholder)
  {
    [objectCopy assignEmptyThemesWithAdapterVersion:self->_adapterVersionForEmptyThemeAssignment uemVersion:self->_uemVersionForEmptyThemeAssignment];
  }

  if (self->_shouldOverwriteExistingThemeVersions)
  {
    [objectCopy setThemeAssignmentsToAdapterVersion:self->_adapterVersionForVersionOverwrite uemVersion:self->_uemVersionForVersionOverwrite];
  }

LABEL_25:
  if (error && !v11)
  {
    v27 = v10;
    *error = v10;
  }

  return v11;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  keyCopy = key;
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v15];

  v12 = v15;
  if (error && (v11 & 1) == 0)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (PHMomentChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = PHMomentChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    array = [MEMORY[0x1E695DF70] array];
    themeAssignments = v8->_themeAssignments;
    v8->_themeAssignments = array;
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

- (void)assignEmptyThemeWithAdapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion
{
  self->_shouldClearThemeAssignments = 1;
  self->_shouldAssignEmptyThemePlaceholder = 1;
  self->_adapterVersionForEmptyThemeAssignment = version;
  self->_uemVersionForEmptyThemeAssignment = uemVersion;
  [(PHChangeRequest *)self didMutate];
}

- (void)assignThemeNamed:(id)named adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion confidence:(id)confidence
{
  namedCopy = named;
  confidenceCopy = confidence;
  if (namedCopy)
  {
    if (!confidenceCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (!confidenceCopy)
    {
      goto LABEL_6;
    }
  }

  [confidenceCopy floatValue];
  if (v12 <= 0.0 || ([confidenceCopy floatValue], v13 > 1.0))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"!confidence || (confidence.floatValue > 0.0 && confidence.floatValue <= 1.0)"}];
  }

LABEL_6:
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v15 setObject:namedCopy forKeyedSubscript:@"themeName"];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  [v15 setObject:v16 forKeyedSubscript:@"version"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:uemVersion];
  [v15 setObject:v17 forKeyedSubscript:@"uemVersion"];

  if (confidenceCopy)
  {
    [v15 setObject:confidenceCopy forKeyedSubscript:@"confidence"];
  }

  [(NSMutableArray *)self->_themeAssignments addObject:v15];
  [(PHChangeRequest *)self didMutate];
}

- (void)addAssetSearchEntityWithLabel:(id)label identifier:(id)identifier type:(unint64_t)type confidence:(double)confidence localeIdentifier:(id)localeIdentifier dateInterval:(id)interval synonyms:(id)synonyms
{
  labelCopy = label;
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  intervalCopy = interval;
  synonymsCopy = synonyms;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:137 description:@"Must specify a type"];
  }

  if (!(labelCopy | identifierCopy))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMomentChangeRequest.m" lineNumber:138 description:@"Must specify a label or identifier"];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [dictionary setObject:v22 forKeyedSubscript:@"type"];

  [dictionary setObject:labelCopy forKeyedSubscript:@"label"];
  [dictionary setObject:identifierCopy forKeyedSubscript:@"identifier"];
  if (confidence > 0.0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BEE58]];
  }

  startDate = [intervalCopy startDate];
  [dictionary setObject:startDate forKeyedSubscript:*MEMORY[0x1E69BEE68]];

  endDate = [intervalCopy endDate];
  [dictionary setObject:endDate forKeyedSubscript:*MEMORY[0x1E69BEE60]];

  [dictionary setObject:synonymsCopy forKeyedSubscript:@"synonyms"];
  [dictionary setObject:localeIdentifierCopy forKeyedSubscript:@"localeIdentifier"];
  assetSearchEntities = self->_assetSearchEntities;
  if (!assetSearchEntities)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = self->_assetSearchEntities;
    self->_assetSearchEntities = v27;

    assetSearchEntities = self->_assetSearchEntities;
  }

  [(NSMutableArray *)assetSearchEntities addObject:dictionary];
  [(PHChangeRequest *)self didMutate];
}

- (void)encodeToXPCDict:(id)dict
{
  xdict = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:xdict];

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

- (PHMomentChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v30.receiver = self;
  v30.super_class = PHMomentChangeRequest;
  v11 = [(PHChangeRequest *)&v30 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __69__PHMomentChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
    v27 = &unk_1E75AAEB0;
    v14 = v11;
    v28 = v14;
    v29 = requestCopy;
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

    v14->_shouldClearThemeAssignments = xpc_dictionary_get_BOOL(dictCopy, "shouldClearThemeAssignments");
    v14->_shouldAssignEmptyThemePlaceholder = xpc_dictionary_get_BOOL(dictCopy, "shouldSetNoThemesPlaceholder");
    v14->_adapterVersionForEmptyThemeAssignment = xpc_dictionary_get_int64(dictCopy, "adapterVersionForEmptyThemeAssignment");
    v14->_uemVersionForEmptyThemeAssignment = xpc_dictionary_get_int64(dictCopy, "uemVersionForEmptyThemeAssignment");
    v22 = xpc_dictionary_get_BOOL(dictCopy, "shouldOverwriteExistingVersions");
    v14->_shouldOverwriteExistingThemeVersions = v22;
    if (v22)
    {
      v14->_adapterVersionForVersionOverwrite = xpc_dictionary_get_int64(dictCopy, "adapterVersionForOverwrite");
      v14->_uemVersionForVersionOverwrite = xpc_dictionary_get_int64(dictCopy, "uemVersionForOverwrite");
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

+ (id)changeRequestForMoment:(id)moment
{
  momentCopy = moment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMomentChangeRequest alloc];
    uuid = [momentCopy uuid];
    objectID = [momentCopy objectID];
    v7 = [(PHMomentChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end