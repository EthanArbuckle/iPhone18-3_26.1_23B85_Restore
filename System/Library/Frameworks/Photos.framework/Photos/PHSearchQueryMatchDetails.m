@interface PHSearchQueryMatchDetails
+ (id)lookupIdentifiersForPersonUUIDs:(id)a3;
+ (id)lookupIdentifiersForSceneIdentifiersAndTypesTuple:(id)a3;
+ (id)queryMatchDetailsForSearchResults:(id)a3 queryText:(id)a4 queryEmbedding:(id)a5 matchedPersonUUIDs:(id)a6 matchedScenes:(id)a7 queryId:(int)a8;
- (PHSearchQueryMatchDetails)initWithQueryText:(id)a3 queryEmbedding:(id)a4 personUUIDS:(id)a5 sceneIdentifiers:(id)a6 audioIdentifiers:(id)a7 humanActionIdentifiers:(id)a8 ocrAssetUUIDS:(id)a9;
- (id)description;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
@end

@implementation PHSearchQueryMatchDetails

- (id)redactedJSONDictionary
{
  v17[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v16[0] = @"queryEmbedding";
  v4 = [(PHSearchQueryMatchDetails *)self queryEmbedding];
  v5 = PLSearchJSONForCSEmbedding();
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v6;
  v16[1] = @"sceneIdentifiers";
  v7 = [(PHSearchQueryMatchDetails *)self sceneIdentifiers];
  v17[1] = v7;
  v16[2] = @"personUUIDS";
  v8 = [(PHSearchQueryMatchDetails *)self personUUIDS];
  v17[2] = v8;
  v16[3] = @"ocrAssetUUIDs";
  v9 = [(PHSearchQueryMatchDetails *)self ocrAssetUUIDs];
  v17[3] = v9;
  v16[4] = @"humanActionIdentifiers";
  v10 = [(PHSearchQueryMatchDetails *)self humanActionIdentifiers];
  v17[4] = v10;
  v16[5] = @"audioIdentifiers";
  v11 = [(PHSearchQueryMatchDetails *)self audioIdentifiers];
  v17[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v13 = [v3 initWithDictionary:v12];

  if (!v5)
  {
  }

  v14 = [v13 copy];

  return v14;
}

- (id)jsonDictionary
{
  v19[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v18[0] = @"queryText";
  v17 = [(PHSearchQueryMatchDetails *)self queryText];
  v16 = [v17 string];
  v19[0] = v16;
  v18[1] = @"queryEmbedding";
  v4 = [(PHSearchQueryMatchDetails *)self queryEmbedding];
  v5 = PLSearchJSONForCSEmbedding();
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v6;
  v18[2] = @"sceneIdentifiers";
  v7 = [(PHSearchQueryMatchDetails *)self sceneIdentifiers];
  v19[2] = v7;
  v18[3] = @"personUUIDS";
  v8 = [(PHSearchQueryMatchDetails *)self personUUIDS];
  v19[3] = v8;
  v18[4] = @"ocrAssetUUIDs";
  v9 = [(PHSearchQueryMatchDetails *)self ocrAssetUUIDs];
  v19[4] = v9;
  v18[5] = @"humanActionIdentifiers";
  v10 = [(PHSearchQueryMatchDetails *)self humanActionIdentifiers];
  v19[5] = v10;
  v18[6] = @"audioIdentifiers";
  v11 = [(PHSearchQueryMatchDetails *)self audioIdentifiers];
  v19[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];
  v13 = [v3 initWithDictionary:v12];

  if (!v5)
  {
  }

  v14 = [v13 copy];

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@:%p\n", v5, self];

  v6 = [(NSAttributedString *)self->_queryText string];
  [v3 appendFormat:@"queryText: '%@'\n", v6];

  [v3 appendFormat:@"queryEmbedding: %@\n", self->_queryEmbedding];
  [v3 appendFormat:@"sceneIdentifiers: %@\n", self->_sceneIdentifiers];
  [v3 appendFormat:@"personUUIDS: %@\n", self->_personUUIDS];
  [v3 appendFormat:@"ocrAssetUUIDs: %@\n", self->_ocrAssetUUIDs];
  [v3 appendFormat:@"humanAction: %@\n", self->_humanActionIdentifiers];
  [v3 appendFormat:@"audio: %@\n", self->_audioIdentifiers];

  return v3;
}

- (PHSearchQueryMatchDetails)initWithQueryText:(id)a3 queryEmbedding:(id)a4 personUUIDS:(id)a5 sceneIdentifiers:(id)a6 audioIdentifiers:(id)a7 humanActionIdentifiers:(id)a8 ocrAssetUUIDS:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v16)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"queryText"}];

    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"personUUIDS"}];

  if (v19)
  {
LABEL_4:
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"sceneIdentifiers"}];

  if (v20)
  {
LABEL_5:
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_14:
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"humanActionIdentifiers"}];

    if (v22)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"audioIdentifiers"}];

  if (!v21)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v22)
  {
    goto LABEL_7;
  }

LABEL_15:
  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  [v46 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"ocrAssetUUIDs"}];

LABEL_7:
  v47.receiver = self;
  v47.super_class = PHSearchQueryMatchDetails;
  v23 = [(PHSearchQueryMatchDetails *)&v47 init];
  if (v23)
  {
    v24 = [v16 copy];
    queryText = v23->_queryText;
    v23->_queryText = v24;

    objc_storeStrong(&v23->_queryEmbedding, a4);
    v26 = [v19 copy];
    sceneIdentifiers = v23->_sceneIdentifiers;
    v23->_sceneIdentifiers = v26;

    v28 = [v20 copy];
    audioIdentifiers = v23->_audioIdentifiers;
    v23->_audioIdentifiers = v28;

    v30 = [v21 copy];
    humanActionIdentifiers = v23->_humanActionIdentifiers;
    v23->_humanActionIdentifiers = v30;

    v32 = [v18 copy];
    personUUIDS = v23->_personUUIDS;
    v23->_personUUIDS = v32;

    v34 = [v22 copy];
    ocrAssetUUIDs = v23->_ocrAssetUUIDs;
    v23->_ocrAssetUUIDs = v34;

    v36 = [MEMORY[0x1E696AC90] indexSetWithIndex:6];
    v37 = [PHSearchUtility queryTokensFromQueryText:v16 limitToSuggestionCategories:v36];
    ocrQueryTokens = v23->_ocrQueryTokens;
    v23->_ocrQueryTokens = v37;

    v39 = [PHSearchUtility queryTokensFromQueryText:v16 limitToSuggestionCategories:0];
    v23->_countOfQueryTerms = [v39 count];
  }

  return v23;
}

+ (id)queryMatchDetailsForSearchResults:(id)a3 queryText:(id)a4 queryEmbedding:(id)a5 matchedPersonUUIDs:(id)a6 matchedScenes:(id)a7 queryId:(int)a8
{
  v76 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v59 = a5;
  v58 = a6;
  v16 = a7;
  v57 = v15;
  if (!v15)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryMatchDetails.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"queryText"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_49:
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryMatchDetails.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"searchResults"}];

    goto LABEL_3;
  }

  if (!v14)
  {
    goto LABEL_49;
  }

LABEL_3:
  v17 = PLPhotosSearchGetLog();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  spid = v18;
  v55 = v18 - 1;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PLSearchBackendQueryExtractQueryMatchDetails", byte_19CB567AE, buf, 2u);
  }

  v56 = v20;

  v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v22)
  {
    v23 = *v69;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v69 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v68 + 1) + 8 * i);
        if ([v25 type] == 1 && objc_msgSend(v25, "hasOCRTextMatch"))
        {
          v26 = [v25 uuid];
          [v63 addObject:v26];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v22);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v27 = v16;
  v28 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v28)
  {
    v29 = *v65;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v65 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v64 + 1) + 8 * j);
        if ([v31 count] == 2)
        {
          v32 = [v31 objectAtIndexedSubscript:0];
          v33 = [v31 objectAtIndexedSubscript:1];
          v34 = [v33 unsignedIntegerValue];

          if (v34 <= 3)
          {
            v36 = v62;
            if (v34 == 1)
            {
              goto LABEL_34;
            }

            v36 = v61;
            if (v34 == 2)
            {
              goto LABEL_34;
            }

            if (v34 == 3)
            {
              v36 = v60;
LABEL_34:
              [v36 addObject:v32];
              goto LABEL_38;
            }
          }

          else if ((v34 - 6) < 3 || v34 == 4)
          {
            goto LABEL_38;
          }

          v37 = PLSearchBackendResultProcessingGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            *v73 = v34;
            *&v73[8] = 2112;
            *&v73[10] = v31;
            _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Invalid scene type %tu, while resolving match details. sceneIdentifierAndType: %@", buf, 0x16u);
          }
        }

        else
        {
          v32 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v73 = v31;
            _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "Invalid sceneIdentifierAndType: %@", buf, 0xCu);
          }
        }

LABEL_38:
      }

      v28 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v28);
  }

  v38 = [PHSearchQueryMatchDetails alloc];
  v39 = [v58 allObjects];
  v40 = [v62 allObjects];
  v41 = [v60 allObjects];
  v42 = [v61 allObjects];
  v43 = [v63 allObjects];
  v44 = [(PHSearchQueryMatchDetails *)v38 initWithQueryText:v57 queryEmbedding:v59 personUUIDS:v39 sceneIdentifiers:v40 audioIdentifiers:v41 humanActionIdentifiers:v42 ocrAssetUUIDS:v43];

  v45 = v56;
  v46 = v45;
  if (v55 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v45))
  {
    v47 = [v21 count];
    v48 = @"YES";
    *buf = 67109634;
    *v73 = a8;
    if (!v59)
    {
      v48 = @"NO";
    }

    *&v73[4] = 2048;
    *&v73[6] = v47;
    *&v73[14] = 2112;
    *&v73[16] = v48;
    v49 = v48;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendQueryExtractQueryMatchDetails", "Query: %d, SearchResults: %tu, QueryEmbedding: %@", buf, 0x1Cu);
  }

  return v44;
}

+ (id)lookupIdentifiersForSceneIdentifiersAndTypesTuple:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 134218242;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v11 objectAtIndexedSubscript:1];
          v14 = [v13 unsignedIntegerValue];

          if (v14 > 3)
          {
            v15 = 0;
            if ((v14 - 6) >= 3 && v14 != 4)
            {
LABEL_19:
              v18 = PLSearchBackendResultProcessingGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v26 = v14;
                v27 = 2112;
                v28 = v11;
                _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Invalid scene type %tu, while resolving match details. sceneIdentifierAndType: %@", buf, 0x16u);
              }

              v15 = 0;
            }

LABEL_24:
            if ([v15 length])
            {
              [v4 addObject:v15];
            }

            goto LABEL_27;
          }

          switch(v14)
          {
            case 1:
LABEL_18:
              [v12 integerValue];
              v17 = PLSearchSceneLookupIdentifier();
              break;
            case 2:
              [v12 intValue];
              v17 = PLSearchHumanActionLookupIdentifier();
              break;
            case 3:
              goto LABEL_18;
            default:
              goto LABEL_19;
          }

          v15 = v17;
          goto LABEL_24;
        }

        v12 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v11;
          _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Invalid sceneIdentifierAndType: %@", buf, 0xCu);
        }

LABEL_27:
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)lookupIdentifiersForPersonUUIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = v10 = *(*(&v13 + 1) + 8 * i);
        [v4 addObject:{v11, v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end