@interface PHSearchQuerySuggestion
+ (BOOL)_deleteRecentSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error;
+ (BOOL)_saveRecentSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error;
+ (BOOL)deleteAllRecentSearchSuggestionsForPhotoLibrary:(id)library error:(id *)error;
+ (BOOL)deleteRecentSearchSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error;
+ (BOOL)saveRecentSearchQuery:(id)query assetResultCount:(int64_t)count keyAssetUUIDs:(id)ds photoLibrary:(id)library error:(id *)error;
+ (id)_assetUUIDsFromFetchResult:(id)result;
+ (id)_recentSuggestionsForPhotoLibrary:(id)library error:(id *)error;
+ (id)recentSearchesForPhotoLibrary:(id)library error:(id *)error;
+ (void)initialSearchQuerySuggestionsForPhotoLibrary:(id)library suggestionLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type suggestionsHandler:(id)handler;
+ (void)initialSearchQuerySuggestionsForPhotoLibrary:(id)library suggestionLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionsHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (PHSearchQuerySuggestion)initWithCoder:(id)coder;
- (PHSearchQuerySuggestion)initWithQueryText:(id)text type:(unint64_t)type assetCount:(int64_t)count keyAssetUUIDs:(id)ds;
- (float)score;
- (id)description;
- (id)jsonDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchQuerySuggestion

- (id)jsonDictionary
{
  v22[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v21[0] = @"type";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchQuerySuggestion type](self, "type")}];
  v22[0] = v20;
  v21[1] = @"type_humanReadable";
  type = [(PHSearchQuerySuggestion *)self type];
  v5 = @"PHSearchQuerySuggestionTypeUndefined";
  if (type == 1)
  {
    v5 = @"PHSearchQuerySuggestionTypeInitial";
  }

  if (type == 2)
  {
    v5 = @"PHSearchQuerySuggestionTypeRecent";
  }

  v6 = v5;
  v22[1] = v6;
  v21[2] = @"query_attr_text";
  queryText = [(PHSearchQuerySuggestion *)self queryText];
  v8 = [queryText description];
  v22[2] = v8;
  v21[3] = @"query_plain_text";
  queryText2 = [(PHSearchQuerySuggestion *)self queryText];
  string = [queryText2 string];
  v22[3] = string;
  v21[4] = @"score";
  v11 = MEMORY[0x1E696AD98];
  [(PHSearchQuerySuggestion *)self score];
  v12 = [v11 numberWithFloat:?];
  v22[4] = v12;
  v21[5] = @"asset_count";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHSearchQuerySuggestion assetCount](self, "assetCount")}];
  v22[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v15 = [v3 initWithDictionary:v14];

  keyAssetUUIDs = [(PHSearchQuerySuggestion *)self keyAssetUUIDs];

  if (keyAssetUUIDs)
  {
    keyAssetUUIDs2 = [(PHSearchQuerySuggestion *)self keyAssetUUIDs];
    [v15 setObject:keyAssetUUIDs2 forKeyedSubscript:@"key_asset_uuids"];
  }

  v18 = [v15 copy];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  queryText = [(PHSearchQuerySuggestion *)self queryText];
  v6 = [queryText description];
  type = self->_type;
  v8 = @"PHSearchQuerySuggestionTypeUndefined";
  if (type == 1)
  {
    v8 = @"PHSearchQuerySuggestionTypeInitial";
  }

  if (type == 2)
  {
    v8 = @"PHSearchQuerySuggestionTypeRecent";
  }

  v9 = v8;
  [(PHSearchQuerySuggestion *)self score];
  v11 = v10;
  assetCount = [(PHSearchQuerySuggestion *)self assetCount];
  keyAssetUUIDs = [(PHSearchQuerySuggestion *)self keyAssetUUIDs];
  v14 = [v3 stringWithFormat:@"%@: %p, query text: '%@', type: %ld (%@), score: %f, asset count: %ld, key asset uuids: %@", v4, self, v6, type, v9, *&v11, assetCount, keyAssetUUIDs];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_queryText forKey:@"PHSearchQuerySuggestionPropertyQueryText"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"PHSearchQuerySuggestionPropertyType"];

  if (self->_assetCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [coderCopy encodeObject:v5 forKey:@"PHSearchQuerySuggestionPropertyAssetCount"];
  }

  [coderCopy encodeObject:self->_keyAssetUUIDs forKey:@"PHSearchQuerySuggestionPropertyKeyAssetUUIDs"];
}

- (PHSearchQuerySuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQuerySuggestionPropertyType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"PHSearchQuerySuggestionPropertyQueryText"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQuerySuggestionPropertyAssetCount"];
  v12 = v11;
  if (v11)
  {
    integerValue = [v11 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PHSearchQuerySuggestionPropertyKeyAssetUUIDs"];
  selfCopy = 0;
  if ([v10 length] && unsignedIntegerValue)
  {
    if (integerValue == 0x7FFFFFFFFFFFFFFFLL && unsignedIntegerValue == 2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(PHSearchQuerySuggestion *)self initWithQueryText:v10 type:unsignedIntegerValue assetCount:integerValue keyAssetUUIDs:v14];
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (unint64_t)hash
{
  type = [(PHSearchQuerySuggestion *)self type];
  queryText = [(PHSearchQuerySuggestion *)self queryText];
  string = [queryText string];
  v6 = [string hash];

  return v6 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(PHSearchQuerySuggestion *)self type];
      if (type == [(PHSearchQuerySuggestion *)v5 type])
      {
        queryText = [(PHSearchQuerySuggestion *)self queryText];
        string = [queryText string];
        queryText2 = [(PHSearchQuerySuggestion *)v5 queryText];
        string2 = [queryText2 string];
        v11 = [string isEqualToString:string2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (float)score
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queryText = [(PHSearchQuerySuggestion *)self queryText];
  queryText2 = [(PHSearchQuerySuggestion *)self queryText];
  v5 = [queryText2 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__PHSearchQuerySuggestion_score__block_invoke;
  v10[3] = &unk_1E75A48C0;
  v10[4] = &v11;
  v10[5] = &v19;
  v10[6] = &v15;
  [queryText enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v5 usingBlock:{0, v10}];

  if (v12[3])
  {
    v6 = v16[3];
    if (v6)
    {
      v7 = v20[6] / v6;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    [MEMORY[0x1E69BE8D0] suggestionScoreForIndexCategory:1102];
    v7 = v8;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v7;
}

void __32__PHSearchQuerySuggestion_score__block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a2 suggestion];
  v4 = v3;
  if (v3)
  {
    ++*(*(a1[4] + 8) + 24);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 suggestionComponents];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9) score];
          *(*(a1[5] + 8) + 24) = v10 + *(*(a1[5] + 8) + 24);
          ++*(*(a1[6] + 8) + 24);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (PHSearchQuerySuggestion)initWithQueryText:(id)text type:(unint64_t)type assetCount:(int64_t)count keyAssetUUIDs:(id)ds
{
  textCopy = text;
  dsCopy = ds;
  if (textCopy)
  {
    if (type)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"queryText"}];

    if (type)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"type != PHSearchQuerySuggestionTypeUndefined"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PHSearchQuerySuggestion;
  v13 = [(PHSearchQuerySuggestion *)&v21 init];
  if (v13)
  {
    v14 = [textCopy copy];
    queryText = v13->_queryText;
    v13->_queryText = v14;

    v13->_type = type;
    v13->_assetCount = count;
    v16 = [dsCopy copy];
    keyAssetUUIDs = v13->_keyAssetUUIDs;
    v13->_keyAssetUUIDs = v16;
  }

  return v13;
}

+ (id)_assetUUIDsFromFetchResult:(id)result
{
  v3 = MEMORY[0x1E695DFA8];
  resultCopy = result;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PHSearchQuerySuggestion__assetUUIDsFromFetchResult___block_invoke;
  v9[3] = &unk_1E75A6FC8;
  v10 = v5;
  v6 = v5;
  [resultCopy enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __54__PHSearchQuerySuggestion__assetUUIDsFromFetchResult___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuid];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 uuid];
    [v4 addObject:v5];
  }
}

+ (BOOL)_deleteRecentSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  libraryCopy = library;
  v11 = libraryCopy;
  if (suggestionsCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"suggestionsToDelete"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  if ([suggestionsCopy count])
  {
    v22 = 0;
    v12 = [self _recentSuggestionsForPhotoLibrary:v11 error:&v22];
    v13 = v22;
    v14 = [v12 mutableCopy];
    [v14 removeObjectsInArray:suggestionsCopy];
    v21 = 0;
    v15 = [self _saveRecentSuggestions:v14 photoLibrary:v11 error:&v21];
    v16 = v21;

    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v24 = suggestionsCopy;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Deleted search suggestions: %@, photoLibrary: %@", buf, 0x16u);
        if (!error)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = suggestionsCopy;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to delete search suggestions: %@, photoLibrary: %@, error: %@", buf, 0x20u);
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v17 = v16;
    *error = v16;
    goto LABEL_12;
  }

  LOBYTE(v15) = 1;
LABEL_13:

  return v15;
}

+ (BOOL)_saveRecentSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  libraryCopy = library;
  v11 = libraryCopy;
  if (suggestionsCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"suggestions"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  pathManager = [v11 pathManager];
  searchRecentSearchesFilePath = [pathManager searchRecentSearchesFilePath];

  v25 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:suggestionsCopy requiringSecureCoding:1 error:&v25];
  v15 = v25;
  v16 = v15;
  if (v14)
  {
    v24 = v15;
    v17 = [v14 writeToFile:searchRecentSearchesFilePath options:1073741825 error:&v24];
    v18 = v24;

    if (v17)
    {
      v19 = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v27 = suggestionsCopy;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Saved search suggestions: %@, photoLibrary: %@", buf, 0x16u);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v27 = suggestionsCopy;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v18;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to save search suggestions: %@, photoLibrary: %@, error: %@", buf, 0x20u);
  }

  v19 = 0;
LABEL_11:
  if (error)
  {
    v20 = v18;
    *error = v18;
  }

  return v19;
}

+ (id)_recentSuggestionsForPhotoLibrary:(id)library error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  pathManager = [libraryCopy pathManager];
  searchRecentSearchesFilePath = [pathManager searchRecentSearchesFilePath];

  v24 = 0;
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:searchRecentSearchesFilePath options:0 error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v23 = v12;
    v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v10 error:&v23];
    v17 = v23;

    if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = libraryCopy;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unarchive search suggestions for photoLibrary: %@, error: %@", buf, 0x16u);
    }

    if (error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    v17 = v11;
    if (error)
    {
LABEL_8:
      v18 = v17;
      *error = v17;
    }
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  return v19;
}

+ (BOOL)deleteAllRecentSearchSuggestionsForPhotoLibrary:(id)library error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  pathManager = [library pathManager];
  searchRecentSearchesFilePath = [pathManager searchRecentSearchesFilePath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:searchRecentSearchesFilePath];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    v10 = [defaultManager2 removeItemAtPath:searchRecentSearchesFilePath error:&v20];
    v11 = v20;

    v12 = PLSearchBackendRecentSuggestionsGetLog();
    v13 = v12;
    if (v10)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v22 = searchRecentSearchesFilePath;
      v14 = "Successfully deleted recent suggestions at path: %@.";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 12;
    }

    else
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 138412546;
      v22 = searchRecentSearchesFilePath;
      v23 = 2112;
      v24 = v11;
      v14 = "Failed to delete recent suggestions at path: %@ with error: %@.";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 22;
    }

    _os_log_impl(&dword_19C86F000, v15, v16, v14, buf, v17);
LABEL_11:

    if (error)
    {
      v18 = v11;
      *error = v11;
    }

    goto LABEL_13;
  }

  v11 = PLSearchBackendRecentSuggestionsGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = searchRecentSearchesFilePath;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "No recent suggestions found at path: %@, nothing to delete.", buf, 0xCu);
  }

  LOBYTE(v10) = 1;
LABEL_13:

  return v10;
}

+ (BOOL)deleteRecentSearchSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error
{
  suggestionsCopy = suggestions;
  libraryCopy = library;
  v11 = libraryCopy;
  if (!suggestionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"suggestionsToDelete"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    goto LABEL_3;
  }

  if (!libraryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [self _deleteRecentSuggestions:suggestionsCopy photoLibrary:v11 error:error];

  return v12;
}

+ (BOOL)saveRecentSearchQuery:(id)query assetResultCount:(int64_t)count keyAssetUUIDs:(id)ds photoLibrary:(id)library error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dsCopy = ds;
  libraryCopy = library;
  v15 = libraryCopy;
  if (queryCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v38 = 0;
  v16 = [self recentSearchesForPhotoLibrary:v15 error:&v38];
  v17 = v38;
  v36 = queryCopy;
  searchText = [queryCopy searchText];
  v19 = [PHSearchQueryAnnotation annotatedQueryStringByFilteringToPHSearchQueryAttributes:searchText];

  v20 = [PHSearchUtility insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:v19];
  v35 = dsCopy;
  v21 = [[PHSearchQuerySuggestion alloc] initWithQueryText:v20 type:2 assetCount:count keyAssetUUIDs:dsCopy];
  v22 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v16];
  [v22 removeObject:v21];
  [v22 insertObject:v21 atIndex:0];
  v23 = [v22 count];
  if (v23 >= 0xA)
  {
    v24 = 10;
  }

  else
  {
    v24 = v23;
  }

  array = [v22 array];
  v26 = [array subarrayWithRange:{0, v24}];

  v37 = 0;
  v27 = [self _saveRecentSuggestions:v26 photoLibrary:v15 error:&v37];
  v28 = v37;

  if (v27)
  {
    errorCopy2 = error;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v15;
      _os_log_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Saved recent search query for photoLibrary: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    errorCopy2 = error;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v40 = v36;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v28;
      _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to save recent search query: %@, photoLibrary: %@, error: %@", buf, 0x20u);
      if (!error)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  if (errorCopy2)
  {
LABEL_12:
    v30 = v28;
    *errorCopy2 = v28;
  }

LABEL_13:

  return v27;
}

+ (id)recentSearchesForPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v8 = [self _recentSuggestionsForPhotoLibrary:libraryCopy error:error];

  return v8;
}

+ (void)initialSearchQuerySuggestionsForPhotoLibrary:(id)library suggestionLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type suggestionsHandler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (libraryCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"suggestionsHandler"}];

    if (limit)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (limit)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuerySuggestion.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"suggestionLimit > 0"}];

LABEL_4:
  if (initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler__onceToken != -1)
  {
    dispatch_once(&initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler__onceToken, &__block_literal_global_8844);
  }

  v16 = initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler__initialSuggestionQueryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__PHSearchQuerySuggestion_initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler___block_invoke_2;
  block[3] = &unk_1E75A4910;
  v24 = libraryCopy;
  v25 = v15;
  limitCopy = limit;
  suggestionCopy = suggestion;
  typeCopy = type;
  v17 = v15;
  v18 = libraryCopy;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v19);
}

void __159__PHSearchQuerySuggestion_initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = PLPhotosSearchGetLog();
  v2 = os_signpost_id_generate(v1);

  v3 = v1;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PLSearchBackendInitialSuggestionQuery", byte_19CB567AE, buf, 2u);
  }

  v26 = v4;

  v5 = [*(a1 + 32) searchIndex];
  v27 = [v5 unverifiedPsiSearchIndex];

  if (v27)
  {
    v24 = [MEMORY[0x1E69BE4B8] sharedManager];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = [*(a1 + 32) photoLibrary];
    v25 = [v24 fetchInitialSuggestionsWithLimit:v6 minimumResultCountPerSuggestion:v7 suggestionStyleType:v8 photoLibrary:v9 psiDatabase:v27];

    if ([v25 count])
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v41 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      obj = v25;
      v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v10)
      {
        v11 = *v39;
        v12 = *MEMORY[0x1E69BF080];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v38 + 1) + 8 * i);
            *buf = 0;
            v33 = buf;
            v34 = 0x3032000000;
            v35 = __Block_byref_object_copy__8852;
            v36 = __Block_byref_object_dispose__8853;
            v37 = 0;
            v15 = [v14 length];
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __159__PHSearchQuerySuggestion_initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler___block_invoke_59;
            v31[3] = &unk_1E75A48E8;
            v31[4] = buf;
            [v14 enumerateAttribute:v12 inRange:0 options:v15 usingBlock:{0, v31}];
            if ([*(v33 + 5) length])
            {
              v16 = [PHSearchUtility updateInitialSearchQueryStringWithSearchAnnotations:v14];
              if (v16)
              {
                v17 = [[PHSearchQuerySuggestion alloc] initWithQueryText:v16 type:1 assetCount:0x7FFFFFFFFFFFFFFFLL keyAssetUUIDs:0];
                [v29 addObject:v17];
              }
            }

            else
            {
              v16 = PLSearchBackendInitialSuggestionsGetLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *v42 = 138412290;
                v43 = v14;
                _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Found invalid initial suggestion containing no template key: %@, suggestion will be skipped.", v42, 0xCu);
              }
            }

            _Block_object_dispose(buf, 8);
          }

          v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v10);
      }

      v18 = *(a1 + 40);
      v19 = [v29 copy];
      (*(v18 + 16))(v18, v19, 0);

      v20 = v26;
      v21 = v20;
      if (v2 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, v2, "PLSearchBackendInitialSuggestionQuery", byte_19CB567AE, buf, 2u);
      }
    }

    else
    {
      v23 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "No initial suggestions found.", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v22 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Unexpected nil psiDatabase. No initial suggestions will be generated.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __159__PHSearchQuerySuggestion_initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __159__PHSearchQuerySuggestion_initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = pl_dispatch_queue_create_with_fallback_qos();
  v1 = initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler__initialSuggestionQueryQueue;
  initialSearchQuerySuggestionsForPhotoLibrary_suggestionLimit_minimumResultCountPerSuggestion_suggestionStyleType_suggestionsHandler__initialSuggestionQueryQueue = v0;
}

+ (void)initialSearchQuerySuggestionsForPhotoLibrary:(id)library suggestionLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionsHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695DF58];
  handlerCopy = handler;
  libraryCopy = library;
  currentLocale = [v10 currentLocale];
  v14 = PLSearchNaturalLanguageInitialSuggestionsSupportedForLocale();
  v15 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v14)
    {
      v16 = @"YES";
    }

    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Device locale supports natural language style initial suggestions: %@", &v17, 0xCu);
  }

  [self initialSearchQuerySuggestionsForPhotoLibrary:libraryCopy suggestionLimit:limit minimumResultCountPerSuggestion:suggestion suggestionStyleType:v14 ^ 1u suggestionsHandler:handlerCopy];
}

@end