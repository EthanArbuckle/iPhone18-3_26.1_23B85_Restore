@interface PHSearchQueryMatchDetails
+ (id)lookupIdentifiersForPersonUUIDs:(id)ds;
+ (id)lookupIdentifiersForSceneIdentifiersAndTypesTuple:(id)tuple;
+ (id)queryMatchDetailsForSearchResults:(id)results queryText:(id)text queryEmbedding:(id)embedding matchedPersonUUIDs:(id)ds matchedScenes:(id)scenes queryId:(int)id;
- (PHSearchQueryMatchDetails)initWithQueryText:(id)text queryEmbedding:(id)embedding personUUIDS:(id)s sceneIdentifiers:(id)identifiers audioIdentifiers:(id)audioIdentifiers humanActionIdentifiers:(id)actionIdentifiers ocrAssetUUIDS:(id)dS;
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
  queryEmbedding = [(PHSearchQueryMatchDetails *)self queryEmbedding];
  v5 = PLSearchJSONForCSEmbedding();
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"sceneIdentifiers";
  sceneIdentifiers = [(PHSearchQueryMatchDetails *)self sceneIdentifiers];
  v17[1] = sceneIdentifiers;
  v16[2] = @"personUUIDS";
  personUUIDS = [(PHSearchQueryMatchDetails *)self personUUIDS];
  v17[2] = personUUIDS;
  v16[3] = @"ocrAssetUUIDs";
  ocrAssetUUIDs = [(PHSearchQueryMatchDetails *)self ocrAssetUUIDs];
  v17[3] = ocrAssetUUIDs;
  v16[4] = @"humanActionIdentifiers";
  humanActionIdentifiers = [(PHSearchQueryMatchDetails *)self humanActionIdentifiers];
  v17[4] = humanActionIdentifiers;
  v16[5] = @"audioIdentifiers";
  audioIdentifiers = [(PHSearchQueryMatchDetails *)self audioIdentifiers];
  v17[5] = audioIdentifiers;
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
  queryText = [(PHSearchQueryMatchDetails *)self queryText];
  string = [queryText string];
  v19[0] = string;
  v18[1] = @"queryEmbedding";
  queryEmbedding = [(PHSearchQueryMatchDetails *)self queryEmbedding];
  v5 = PLSearchJSONForCSEmbedding();
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null;
  v18[2] = @"sceneIdentifiers";
  sceneIdentifiers = [(PHSearchQueryMatchDetails *)self sceneIdentifiers];
  v19[2] = sceneIdentifiers;
  v18[3] = @"personUUIDS";
  personUUIDS = [(PHSearchQueryMatchDetails *)self personUUIDS];
  v19[3] = personUUIDS;
  v18[4] = @"ocrAssetUUIDs";
  ocrAssetUUIDs = [(PHSearchQueryMatchDetails *)self ocrAssetUUIDs];
  v19[4] = ocrAssetUUIDs;
  v18[5] = @"humanActionIdentifiers";
  humanActionIdentifiers = [(PHSearchQueryMatchDetails *)self humanActionIdentifiers];
  v19[5] = humanActionIdentifiers;
  v18[6] = @"audioIdentifiers";
  audioIdentifiers = [(PHSearchQueryMatchDetails *)self audioIdentifiers];
  v19[6] = audioIdentifiers;
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
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"%@:%p\n", v5, self];

  string2 = [(NSAttributedString *)self->_queryText string];
  [string appendFormat:@"queryText: '%@'\n", string2];

  [string appendFormat:@"queryEmbedding: %@\n", self->_queryEmbedding];
  [string appendFormat:@"sceneIdentifiers: %@\n", self->_sceneIdentifiers];
  [string appendFormat:@"personUUIDS: %@\n", self->_personUUIDS];
  [string appendFormat:@"ocrAssetUUIDs: %@\n", self->_ocrAssetUUIDs];
  [string appendFormat:@"humanAction: %@\n", self->_humanActionIdentifiers];
  [string appendFormat:@"audio: %@\n", self->_audioIdentifiers];

  return string;
}

- (PHSearchQueryMatchDetails)initWithQueryText:(id)text queryEmbedding:(id)embedding personUUIDS:(id)s sceneIdentifiers:(id)identifiers audioIdentifiers:(id)audioIdentifiers humanActionIdentifiers:(id)actionIdentifiers ocrAssetUUIDS:(id)dS
{
  textCopy = text;
  embeddingCopy = embedding;
  sCopy = s;
  identifiersCopy = identifiers;
  audioIdentifiersCopy = audioIdentifiers;
  actionIdentifiersCopy = actionIdentifiers;
  dSCopy = dS;
  if (textCopy)
  {
    if (sCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"queryText"}];

    if (sCopy)
    {
LABEL_3:
      if (identifiersCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"personUUIDS"}];

  if (identifiersCopy)
  {
LABEL_4:
    if (audioIdentifiersCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"sceneIdentifiers"}];

  if (audioIdentifiersCopy)
  {
LABEL_5:
    if (actionIdentifiersCopy)
    {
      goto LABEL_6;
    }

LABEL_14:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"humanActionIdentifiers"}];

    if (dSCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"audioIdentifiers"}];

  if (!actionIdentifiersCopy)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (dSCopy)
  {
    goto LABEL_7;
  }

LABEL_15:
  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"ocrAssetUUIDs"}];

LABEL_7:
  v47.receiver = self;
  v47.super_class = PHSearchQueryMatchDetails;
  v23 = [(PHSearchQueryMatchDetails *)&v47 init];
  if (v23)
  {
    v24 = [textCopy copy];
    queryText = v23->_queryText;
    v23->_queryText = v24;

    objc_storeStrong(&v23->_queryEmbedding, embedding);
    v26 = [identifiersCopy copy];
    sceneIdentifiers = v23->_sceneIdentifiers;
    v23->_sceneIdentifiers = v26;

    v28 = [audioIdentifiersCopy copy];
    audioIdentifiers = v23->_audioIdentifiers;
    v23->_audioIdentifiers = v28;

    v30 = [actionIdentifiersCopy copy];
    humanActionIdentifiers = v23->_humanActionIdentifiers;
    v23->_humanActionIdentifiers = v30;

    v32 = [sCopy copy];
    personUUIDS = v23->_personUUIDS;
    v23->_personUUIDS = v32;

    v34 = [dSCopy copy];
    ocrAssetUUIDs = v23->_ocrAssetUUIDs;
    v23->_ocrAssetUUIDs = v34;

    v36 = [MEMORY[0x1E696AC90] indexSetWithIndex:6];
    v37 = [PHSearchUtility queryTokensFromQueryText:textCopy limitToSuggestionCategories:v36];
    ocrQueryTokens = v23->_ocrQueryTokens;
    v23->_ocrQueryTokens = v37;

    v39 = [PHSearchUtility queryTokensFromQueryText:textCopy limitToSuggestionCategories:0];
    v23->_countOfQueryTerms = [v39 count];
  }

  return v23;
}

+ (id)queryMatchDetailsForSearchResults:(id)results queryText:(id)text queryEmbedding:(id)embedding matchedPersonUUIDs:(id)ds matchedScenes:(id)scenes queryId:(int)id
{
  v76 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  textCopy = text;
  embeddingCopy = embedding;
  dsCopy = ds;
  scenesCopy = scenes;
  v57 = textCopy;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"queryText"}];

    if (resultsCopy)
    {
      goto LABEL_3;
    }

LABEL_49:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQueryMatchDetails.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"searchResults"}];

    goto LABEL_3;
  }

  if (!resultsCopy)
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
  v21 = resultsCopy;
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
          uuid = [v25 uuid];
          [v63 addObject:uuid];
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
  v27 = scenesCopy;
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
          unsignedIntegerValue = [v33 unsignedIntegerValue];

          if (unsignedIntegerValue <= 3)
          {
            v36 = v62;
            if (unsignedIntegerValue == 1)
            {
              goto LABEL_34;
            }

            v36 = v61;
            if (unsignedIntegerValue == 2)
            {
              goto LABEL_34;
            }

            if (unsignedIntegerValue == 3)
            {
              v36 = v60;
LABEL_34:
              [v36 addObject:v32];
              goto LABEL_38;
            }
          }

          else if ((unsignedIntegerValue - 6) < 3 || unsignedIntegerValue == 4)
          {
            goto LABEL_38;
          }

          v37 = PLSearchBackendResultProcessingGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            *v73 = unsignedIntegerValue;
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
  allObjects = [dsCopy allObjects];
  allObjects2 = [v62 allObjects];
  allObjects3 = [v60 allObjects];
  allObjects4 = [v61 allObjects];
  allObjects5 = [v63 allObjects];
  v44 = [(PHSearchQueryMatchDetails *)v38 initWithQueryText:v57 queryEmbedding:embeddingCopy personUUIDS:allObjects sceneIdentifiers:allObjects2 audioIdentifiers:allObjects3 humanActionIdentifiers:allObjects4 ocrAssetUUIDS:allObjects5];

  v45 = v56;
  v46 = v45;
  if (v55 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v45))
  {
    v47 = [v21 count];
    v48 = @"YES";
    *buf = 67109634;
    *v73 = id;
    if (!embeddingCopy)
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

+ (id)lookupIdentifiersForSceneIdentifiersAndTypesTuple:(id)tuple
{
  v30 = *MEMORY[0x1E69E9840];
  tupleCopy = tuple;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = tupleCopy;
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
          unsignedIntegerValue = [v13 unsignedIntegerValue];

          if (unsignedIntegerValue > 3)
          {
            v15 = 0;
            if ((unsignedIntegerValue - 6) >= 3 && unsignedIntegerValue != 4)
            {
LABEL_19:
              v18 = PLSearchBackendResultProcessingGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v26 = unsignedIntegerValue;
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

          switch(unsignedIntegerValue)
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

+ (id)lookupIdentifiersForPersonUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dsCopy;
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