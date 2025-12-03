@interface PHSearchIndexEntityResult
+ (id)fetchAssetUUIDsForDateComponents:(id)components toLibrary:(id)library error:(id *)error;
+ (id)fetchAssetUUIDsForIndexEntities:(id)entities photoLibrary:(id)library error:(id *)error;
+ (id)fetchAssetUUIDsFromStartDateComponents:(id)components endDateComponents:(id)dateComponents photoLibrary:(id)library error:(id *)error;
+ (id)indexEntitiesMatchingText:(id)text options:(id)options error:(id *)error;
+ (void)enumerateIndexEntitiesMatchingTexts:(id)texts options:(id)options resultHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringMatchType:(id)type;
- (id)description;
- (id)initFromPSIGroup:(id)group matchType:(unint64_t)type;
- (id)jsonDictionary;
- (int64_t)compare:(id)compare;
@end

@implementation PHSearchIndexEntityResult

- (id)jsonDictionary
{
  v21[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  category = self->_category;
  v21[0] = self->_identifier;
  v20[0] = @"identifier";
  v20[1] = @"category";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  v21[1] = v19;
  v20[2] = @"category_humanReadable";
  v18 = PLDebugStringForSearchIndexCategory();
  v21[2] = v18;
  v20[3] = @"matchType";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchType];
  v21[3] = v5;
  v20[4] = @"matchType_humanReadable";
  matchType = self->_matchType;
  if (matchType > 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E75A7808[matchType];
  }

  v21[4] = v7;
  v20[5] = @"score";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v21[5] = v8;
  v20[6] = @"text";
  text = self->_text;
  null = text;
  if (!text)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21[6] = null;
  v20[7] = @"normalizedText";
  normalizedText = self->_normalizedText;
  null2 = normalizedText;
  if (!normalizedText)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21[7] = null2;
  v20[8] = @"lookupIdentifier";
  lookupIdentifier = self->_lookupIdentifier;
  null3 = lookupIdentifier;
  if (!lookupIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21[8] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:9];
  v16 = [v3 initWithDictionary:v15];

  if (lookupIdentifier)
  {
    if (normalizedText)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (text)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!normalizedText)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (text)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:

  return v16;
}

- (id)description
{
  matchType = self->_matchType;
  if (matchType > 4)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_1E75A7808[matchType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier: %@, category: %tu, text: %@, normalizedText: %@, matchType: %@, score: %f, lookupIdentifier: %@", self->_identifier, self->_category, self->_text, self->_normalizedText, v3, *&self->_score, self->_lookupIdentifier];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:95 description:{@"Unexpected class type: %@", objc_opt_class()}];
  }

  matchType = [(PHSearchIndexEntityResult *)self matchType];
  if (matchType < [compareCopy matchType])
  {
    goto LABEL_4;
  }

  matchType2 = [(PHSearchIndexEntityResult *)self matchType];
  if (matchType2 > [compareCopy matchType])
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  [(PHSearchIndexEntityResult *)self score];
  v11 = v10;
  [compareCopy score];
  if (v11 >= v12)
  {
    [(PHSearchIndexEntityResult *)self score];
    v14 = v13;
    [compareCopy score];
    if (v14 <= v15)
    {
      normalizedText = [(PHSearchIndexEntityResult *)self normalizedText];
      normalizedText2 = [compareCopy normalizedText];
      v7 = [normalizedText compare:normalizedText2];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_4:
  v7 = -1;
LABEL_7:

  return v7;
}

- (BOOL)isEqualIgnoringMatchType:(id)type
{
  typeCopy = type;
  if (self == typeCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(PHSearchIndexEntityResult *)typeCopy identifier];
      v7 = [(NSString *)identifier isEqualToString:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PHSearchIndexEntityResult *)self isEqualIgnoringMatchType:equalCopy];
      matchType = self->_matchType;
      v7 = matchType == [(PHSearchIndexEntityResult *)equalCopy matchType]&& v5;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)initFromPSIGroup:(id)group matchType:(unint64_t)type
{
  groupCopy = group;
  v21.receiver = self;
  v21.super_class = PHSearchIndexEntityResult;
  v7 = [(PHSearchIndexEntityResult *)&v21 init];
  if (v7)
  {
    v7->_groupId = [groupCopy groupId];
    v7->_owningGroupId = [groupCopy owningGroupId];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(groupCopy, "groupId")];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    contentString = [groupCopy contentString];
    v11 = [contentString copy];
    text = v7->_text;
    v7->_text = v11;

    normalizedString = [groupCopy normalizedString];
    v14 = [normalizedString copy];
    normalizedText = v7->_normalizedText;
    v7->_normalizedText = v14;

    lookupIdentifier = [groupCopy lookupIdentifier];
    v17 = [lookupIdentifier copy];
    lookupIdentifier = v7->_lookupIdentifier;
    v7->_lookupIdentifier = v17;

    v7->_category = [groupCopy category];
    [groupCopy score];
    v7->_score = v19;
    v7->_matchType = type;
  }

  return v7;
}

+ (id)fetchAssetUUIDsFromStartDateComponents:(id)components endDateComponents:(id)dateComponents photoLibrary:(id)library error:(id *)error
{
  v58[1] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  v13 = componentsCopy;
  v42 = dateComponentsCopy;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v14 = PLPhotosSearchGetLog();
  v15 = os_signpost_id_generate(v14);

  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PLSearchBackendFetchAssetUUIDsForDateComponents", byte_19CB567AE, buf, 2u);
  }

  searchIndex = [libraryCopy searchIndex];
  unverifiedPsiSearchIndex = [searchIndex unverifiedPsiSearchIndex];

  if (unverifiedPsiSearchIndex)
  {
    if (v13)
    {
      distantPast = [objc_alloc(MEMORY[0x1E69BE8A8]) initWithDateComponents:v13];
    }

    else
    {
      distantPast = [MEMORY[0x1E69BE8A8] distantPast];
    }

    v23 = distantPast;
    if (v42)
    {
      distantFuture = [objc_alloc(MEMORY[0x1E69BE8A8]) initWithDateComponents:v42];
    }

    else
    {
      distantFuture = [MEMORY[0x1E69BE8A8] distantFuture];
    }

    v26 = distantFuture;
    v27 = [objc_alloc(MEMORY[0x1E69BE8B0]) initWithStartDate:v23 endDate:distantFuture];
    v24 = [unverifiedPsiSearchIndex assetUUIDsForAssetIdsArray:{objc_msgSend(unverifiedPsiSearchIndex, "assetIdsWithDateFilter:", v27)}];
    v28 = v17;
    v29 = v28;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = [v24 count];
      *buf = 134218498;
      v44 = v30;
      v45 = 2112;
      v46 = v13;
      v47 = 2112;
      v48 = v42;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v29, OS_SIGNPOST_INTERVAL_END, v15, "PLSearchBackendFetchAssetUUIDsForDateComponents", "%tu assets for %@ - %@", buf, 0x20u);
    }

    v31 = PLSearchBackendIndexEntityResultGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v13;
      v40 = v17;
      v32 = [v24 count];
      int64RepresentationMask = [v23 int64RepresentationMask];
      int64Representation = [v23 int64Representation];
      int64RepresentationMask2 = [v26 int64RepresentationMask];
      int64Representation2 = [v26 int64Representation];
      *buf = 134219522;
      v44 = v32;
      v45 = 2112;
      v46 = v39;
      v47 = 2112;
      v48 = v42;
      v49 = 2048;
      v50 = int64RepresentationMask;
      v51 = 2048;
      v52 = int64Representation;
      v53 = 2048;
      v54 = int64RepresentationMask2;
      v13 = v39;
      v55 = 2048;
      v56 = int64Representation2;
      _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "Fetched %tu asset UUIDs for startDate: %@, endDate: %@.\nPSI: creationDate & %lld >= %lld AND creationDate & %lld <= %lld", buf, 0x48u);
      v17 = v40;
    }

    goto LABEL_23;
  }

  v21 = PLSearchBackendIndexEntityResultGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v44 = libraryCopy;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Unable to access PSIDatabase for PhotoLibrary: %@. Unable to fetch index entities.", buf, 0xCu);
  }

  if (error)
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57 = *MEMORY[0x1E696A278];
    v58[0] = @"Failed to open PSIDatabase.";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    *error = [v22 initWithDomain:*MEMORY[0x1E69BFF48] code:6101 userInfo:v23];
    v24 = MEMORY[0x1E695E0F0];
LABEL_23:

    goto LABEL_24;
  }

  v24 = MEMORY[0x1E695E0F0];
LABEL_24:

  return v24;
}

+ (id)fetchAssetUUIDsForDateComponents:(id)components toLibrary:(id)library error:(id *)error
{
  componentsCopy = components;
  libraryCopy = library;
  v11 = libraryCopy;
  if (componentsCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"dateComponents"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v12 = [self fetchAssetUUIDsFromStartDateComponents:componentsCopy endDateComponents:componentsCopy photoLibrary:v11 error:error];

  return v12;
}

+ (id)fetchAssetUUIDsForIndexEntities:(id)entities photoLibrary:(id)library error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  libraryCopy = library;
  v11 = libraryCopy;
  if (entitiesCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"indexEntities"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  if (![entitiesCopy count])
  {
    v24 = MEMORY[0x1E695E0F0];
    goto LABEL_29;
  }

  v12 = PLPhotosSearchGetLog();
  v13 = os_signpost_id_generate(v12);

  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLSearchBackendFetchAssetUUIDsForIndexEntity", byte_19CB567AE, buf, 2u);
  }

  v37 = v15;

  searchIndex = [v11 searchIndex];
  unverifiedPsiSearchIndex = [searchIndex unverifiedPsiSearchIndex];

  if (unverifiedPsiSearchIndex)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = entitiesCopy;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v19)
    {
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          owningGroupId = [v22 owningGroupId];
          if (!owningGroupId)
          {
            owningGroupId = [v22 groupId];
          }

          CFSetAddValue(Mutable, owningGroupId);
        }

        v19 = [v18 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v19);
    }

    v24 = [unverifiedPsiSearchIndex assetUUIDsForGroupIDs:Mutable];
    CFRelease(Mutable);
    v25 = v37;
    v26 = v25;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v27 = [v24 count];
      v28 = [v18 count];
      *buf = 134218240;
      v44 = v27;
      v45 = 2048;
      v46 = v28;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v26, OS_SIGNPOST_INTERVAL_END, v13, "PLSearchBackendFetchAssetUUIDsForIndexEntity", "%tu assets for %lu entities", buf, 0x16u);
    }

    v29 = PLSearchBackendIndexEntityResultGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v24 count];
      v31 = [v18 count];
      *buf = 134218498;
      v44 = v30;
      v45 = 2048;
      v46 = v31;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEFAULT, "Fetched %tu asset UUIDs for %tu index entities: %@", buf, 0x20u);
    }
  }

  else
  {
    v32 = PLSearchBackendIndexEntityResultGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v11;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "Unable to access PSIDatabase for PhotoLibrary: %@. Unable to fetch index entities.", buf, 0xCu);
    }

    if (!error)
    {
      v24 = MEMORY[0x1E695E0F0];
      goto LABEL_28;
    }

    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50 = *MEMORY[0x1E696A278];
    v51[0] = @"Failed to open PSIDatabase.";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    *error = [v33 initWithDomain:*MEMORY[0x1E69BFF48] code:6101 userInfo:v29];
    v24 = MEMORY[0x1E695E0F0];
  }

LABEL_28:
LABEL_29:

  return v24;
}

+ (id)indexEntitiesMatchingText:(id)text options:(id)options error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  optionsCopy = options;
  v8 = PLPhotosSearchGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  v64 = v9 - 1;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PLSearchBackendIndexEntitiesMatchingText", byte_19CB567AE, buf, 2u);
  }

  v67 = v11;

  if ([textCopy length])
  {
    if ([optionsCopy matchOptions])
    {
      psiDatabase = [optionsCopy psiDatabase];
      if (psiDatabase)
      {
        v12 = PLSearchBackendIndexEntityResultGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v78 = textCopy;
          v79 = 2112;
          v80 = optionsCopy;
          _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "Fetching index entities matching text: %@, options: %@", buf, 0x16u);
        }

        matchOptions = [optionsCopy matchOptions];
        v71 = [MEMORY[0x1E69BE8D8] normalizeString:textCopy];
        v14 = psiDatabase;
        v15 = (matchOptions >> 4) & 1;
        if ([optionsCopy matchOptions])
        {
          v24 = [MEMORY[0x1E69BE8D8] fts5StringFromString:v71 useWildcard:1 leadingAnchored:(matchOptions >> 4) & 1 orderInsensitive:0];
          categories = [optionsCopy categories];
          v16 = [psiDatabase groupIdsMatchingFTSString:v24 categories:categories textIsSearchable:1];

          v14 = psiDatabase;
        }

        else
        {
          v16 = 0;
        }

        if (([optionsCopy matchOptions] & 8) != 0)
        {
          matchOptions2 = [optionsCopy matchOptions];
          v27 = [MEMORY[0x1E69BE8D8] fts5StringFromString:v71 useWildcard:matchOptions2 & 1 leadingAnchored:v15 orderInsensitive:1];
          categories2 = [optionsCopy categories];
          theSet = [v14 groupIdsMatchingFTSString:v27 categories:categories2 textIsSearchable:1];

          v14 = psiDatabase;
        }

        else
        {
          theSet = 0;
        }

        if (([optionsCopy matchOptions] & 6) != 0)
        {
          v29 = [MEMORY[0x1E69BE8D8] fts5StringFromString:v71 useWildcard:0 leadingAnchored:v15 orderInsensitive:0];
          categories3 = [optionsCopy categories];
          v70 = [v14 groupIdsMatchingFTSString:v29 categories:categories3 textIsSearchable:1];

          v14 = psiDatabase;
          if (v16)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v70 = 0;
          if (v16)
          {
LABEL_27:
            v31 = CFRetain(v16);
            v32 = CFAutorelease(v31);
            v33 = v32;
            if (!theSet)
            {
              v37 = 0;
LABEL_36:
              if (!v70)
              {
                v42 = 0;
                if (v33)
                {
LABEL_47:
                  v44 = [v14 groupsForGroupIds:v33 includeObjectIds:0 searchResultTypes:1];
                  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  obj = v44;
                  v45 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
                  if (v45)
                  {
                    v46 = *v74;
                    v47 = v42 ^ 1;
                    v48 = v37 ^ 1;
                    do
                    {
                      for (i = 0; i != v45; ++i)
                      {
                        if (*v74 != v46)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v50 = *(*(&v73 + 1) + 8 * i);
                        if (([optionsCopy matchOptions] & 4) != 0)
                        {
                          normalizedString = [v50 normalizedString];
                          v52 = [normalizedString length];
                          LOBYTE(v52) = v52 == [v71 length];

                          if (v52)
                          {
                            v53 = 4;
LABEL_71:
                            v56 = [[PHSearchIndexEntityResult alloc] initFromPSIGroup:v50 matchType:v53];
                            [v23 addObject:v56];
                            goto LABEL_72;
                          }
                        }

                        if (([optionsCopy matchOptions] & 2) != 0)
                        {
                          v54 = v47;
                        }

                        else
                        {
                          v54 = 1;
                        }

                        if ((v54 & 1) == 0 && CFSetContainsValue(v70, [v50 groupId]))
                        {
                          v53 = 3;
                          goto LABEL_71;
                        }

                        if (([optionsCopy matchOptions] & 8) != 0)
                        {
                          v55 = v48;
                        }

                        else
                        {
                          v55 = 1;
                        }

                        if ((v55 & 1) == 0 && CFSetContainsValue(theSet, [v50 groupId]))
                        {
                          v53 = 2;
                          goto LABEL_71;
                        }

                        if ([optionsCopy matchOptions])
                        {
                          v53 = 1;
                          goto LABEL_71;
                        }

                        v56 = PLSearchBackendIndexEntityResultGetLog();
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v78 = v50;
                          _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_ERROR, "Unable to determine match type for group: %@", buf, 0xCu);
                        }

LABEL_72:
                      }

                      v45 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
                    }

                    while (v45);
                  }

                  v57 = v67;
                  v58 = v57;
                  if (v64 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v57))
                  {
                    v59 = [v23 count];
                    *buf = 134218242;
                    v78 = v59;
                    v79 = 2112;
                    v80 = textCopy;
                    _os_signpost_emit_with_name_impl(&dword_19C86F000, v58, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendIndexEntitiesMatchingText", "%tu index entities. Text: %@", buf, 0x16u);
                  }

                  v60 = PLSearchBackendIndexEntityResultGetLog();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    v61 = [v23 count];
                    *buf = 134218498;
                    v78 = v61;
                    v79 = 2112;
                    v80 = textCopy;
                    v81 = 2112;
                    v82 = optionsCopy;
                    _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_DEFAULT, "Found %tu index entities matching text: %@, options: %@", buf, 0x20u);
                  }

                  goto LABEL_83;
                }

LABEL_80:
                v62 = PLSearchBackendIndexEntityResultGetLog();
                obj = v62;
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v78 = textCopy;
                  v79 = 2112;
                  v80 = optionsCopy;
                  _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEFAULT, "Found 0 index entities matching text: %@, options: %@", buf, 0x16u);
                }

                v23 = MEMORY[0x1E695E0F0];
LABEL_83:

                goto LABEL_84;
              }

              if (v33)
              {
                Count = CFSetGetCount(v33);
                v39 = CFSetGetCount(v70);
                MutableCopy = CFSetCreateMutableCopy(*MEMORY[0x1E695E480], v39 + Count, v33);
                CFSetApplyFunction(v70, _addValueToCFSet, MutableCopy);
                v41 = CFAutorelease(MutableCopy);
                goto LABEL_46;
              }

LABEL_45:
              v43 = CFRetain(v70);
              v41 = CFAutorelease(v43);
LABEL_46:
              v33 = v41;
              v42 = 1;
              if (v41)
              {
                goto LABEL_47;
              }

              goto LABEL_80;
            }

            if (v32)
            {
              v34 = CFSetGetCount(v32);
              v35 = CFSetGetCount(theSet);
              v36 = CFSetCreateMutableCopy(*MEMORY[0x1E695E480], v35 + v34, v33);
              CFSetApplyFunction(theSet, _addValueToCFSet, v36);
LABEL_33:
              v33 = CFAutorelease(v36);
              v37 = 1;
              goto LABEL_36;
            }

LABEL_32:
            v36 = CFRetain(theSet);
            goto LABEL_33;
          }
        }

        if (!theSet)
        {
          if (!v70)
          {
            goto LABEL_80;
          }

          v37 = 0;
          goto LABEL_45;
        }

        goto LABEL_32;
      }

      v20 = PLSearchBackendIndexEntityResultGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        photoLibrary = [optionsCopy photoLibrary];
        *buf = 138412290;
        v78 = photoLibrary;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Unable to access PSIDatabase for PhotoLibrary: %@. Unable to fetch index entities.", buf, 0xCu);
      }

      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E696A278];
        v85 = @"Failed to open PSIDatabase.";
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        *error = [v22 initWithDomain:*MEMORY[0x1E69BFF48] code:6101 userInfo:v71];
        v23 = MEMORY[0x1E695E0F0];
LABEL_84:

        v17 = psiDatabase;
        goto LABEL_85;
      }

      v17 = 0;
    }

    else
    {
      v18 = PLSearchBackendIndexEntityResultGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "No match options set. Unable to fetch index entities.", buf, 2u);
      }

      if (!error)
      {
        v23 = MEMORY[0x1E695E0F0];
        goto LABEL_86;
      }

      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v86 = *MEMORY[0x1E696A278];
      v87[0] = @"No match options set.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
      *error = [v19 initWithDomain:*MEMORY[0x1E69BFF48] code:3126 userInfo:v17];
    }
  }

  else
  {
    v17 = PLSearchBackendIndexEntityResultGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "queryText is empty/nil. No Index Entity Results to retrieve.", buf, 2u);
    }
  }

  v23 = MEMORY[0x1E695E0F0];
LABEL_85:

LABEL_86:

  return v23;
}

+ (void)enumerateIndexEntitiesMatchingTexts:(id)texts options:(id)options resultHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  textsCopy = texts;
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchIndexEntityResult.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
  }

  v12 = PLSearchBackendIndexEntityResultGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = textsCopy;
    v22 = 2112;
    v23 = optionsCopy;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "enumerateIndexEntities matchingTexts: %@, options: %@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PHSearchIndexEntityResult_enumerateIndexEntitiesMatchingTexts_options_resultHandler___block_invoke;
  v16[3] = &unk_1E75A77E8;
  v18 = handlerCopy;
  selfCopy = self;
  v17 = optionsCopy;
  v13 = handlerCopy;
  v14 = optionsCopy;
  [textsCopy enumerateObjectsUsingBlock:v16];
}

void __87__PHSearchIndexEntityResult_enumerateIndexEntitiesMatchingTexts_options_resultHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v8 = 0;
  v5 = a2;
  v6 = [v3 indexEntitiesMatchingText:v5 options:v4 error:&v8];
  v7 = v8;
  (*(a1[5] + 16))();
}

@end