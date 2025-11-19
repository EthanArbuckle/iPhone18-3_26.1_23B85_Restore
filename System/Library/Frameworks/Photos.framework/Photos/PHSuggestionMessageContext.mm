@interface PHSuggestionMessageContext
- (NSArray)messageTokens;
- (NSArray)resolvedParticipants;
- (PHSuggestionMessageContext)initWithMessages:(id)a3;
- (PHSuggestionMessageContext)initWithMessages:(id)a3 participantsFromContacts:(id)a4 photoLibrary:(id)a5;
- (PHSuggestionMessageContext)initWithMessages:(id)a3 participantsFromPersons:(id)a4 photoLibrary:(id)a5;
- (id)_mostRecentSuggestionFromSuggestions:(id)a3;
- (id)_suggestionsMatchingType:(int64_t)a3;
- (id)confidentMatchSuggestionUsingStrategy:(unint64_t)a3;
- (id)description;
- (id)detailedDescription;
- (id)matchingResultWithSuggestion:(id)a3;
- (void)matchWithSuggestions:(id)a3;
- (void)setCnParticipants:(id)a3;
- (void)setPhParticipants:(id)a3;
@end

@implementation PHSuggestionMessageContext

- (id)_mostRecentSuggestionFromSuggestions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 anyObject];
  v5 = [v4 startDate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 startDate];
        if ([v12 compare:v5] >= 1)
        {
          v13 = v12;

          v14 = v11;
          v5 = v13;
          v4 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)confidentMatchSuggestionUsingStrategy:(unint64_t)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHSuggestionMessageContext *)self suggestionMatchingResultsBySuggestionIdentifier];
    v7 = [v6 count];
    v8 = [(PHSuggestionMessageContext *)self numberOfParticipants];
    v9 = [(PHSuggestionMessageContext *)self messages];
    *buf = 134218752;
    v100 = a3;
    v101 = 2048;
    v102 = *&v7;
    v103 = 2048;
    v104 = v8;
    v105 = 1024;
    v106 = [v9 count] != 0;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: Searching confident match suggestion using strategy %lu among %lu suggestions using message context (%lu participants, message string available: %d)", buf, 0x26u);
  }

  if (![(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier count])
  {
    v27 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: Error no suggestions are found", buf, 2u);
    }

    v26 = 0;
    goto LABEL_90;
  }

  v10 = [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier allValues];
  v76 = self;
  v11 = [(PHSuggestionMessageContext *)self dateInterval];

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E695DFA8] set];
  v75 = v11;
  v77 = v10;
  if (v11)
  {
    v14 = [MEMORY[0x1E695DFA8] set];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v92 objects:v98 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v93;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v93 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v92 + 1) + 8 * i);
          [v20 scoreForSuggestionMatchingType:3];
          if (v21 > 0.0)
          {
            [v14 addObject:v20];
            v22 = [v20 suggestion];
            [v12 addObject:v22];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v92 objects:v98 count:16];
      }

      while (v17);
    }

    v23 = [v14 count];
    if (!(a3 | v23))
    {
      v83 = v14;
      v24 = PLPhotoKitGetLog();
      v25 = v13;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: No result - NLP Date range is found and no suggestion is matching it", buf, 2u);
      }

      v26 = 0;
      v27 = v77;
      goto LABEL_89;
    }

    v25 = v13;
    if (v23)
    {
      v27 = v77;
      if (v23 == 1)
      {
        v83 = v14;
        v28 = [v14 anyObject];
        v26 = [v28 suggestion];

        v24 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v26 localIdentifier];
          *buf = 138412290;
          v100 = v29;
          _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - unique suggestion matching NLP Date Range", buf, 0xCu);
        }

        goto LABEL_89;
      }

      [v13 unionSet:v14];
      v30 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v14 count];
        *buf = 134217984;
        v100 = v31;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: filtering out the candidate set to the %lu suggestions matching NLP Date Range", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = [v10 mutableCopy];
    v14 = v13;
  }

  v24 = [MEMORY[0x1E695DFA8] set];
  v82 = [MEMORY[0x1E695DFA8] set];
  v81 = [MEMORY[0x1E695DFA8] set];
  v80 = [MEMORY[0x1E695DF70] array];
  v79 = [MEMORY[0x1E695DF70] array];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v25 = v25;
  v32 = [v25 countByEnumeratingWithState:&v88 objects:v97 count:16];
  v78 = v25;
  if (!v32)
  {
    v83 = 0;
    v36 = 0.0;
    goto LABEL_50;
  }

  v33 = v32;
  v83 = 0;
  v34 = *v89;
  v35 = 0.0;
  v36 = 0.0;
  do
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v89 != v34)
      {
        objc_enumerationMutation(v25);
      }

      v38 = *(*(&v88 + 1) + 8 * j);
      v39 = [v38 suggestion];
      [v38 scoreForSuggestionMatchingType:2];
      if (v40 > 0.0)
      {
        v41 = v40;
        v42 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v39 localIdentifier];
          *buf = 138412546;
          v100 = v43;
          v101 = 2048;
          v102 = v41;
          _os_log_impl(&dword_19C86F000, v42, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: suggestion %@ matching nlp context with score %f", buf, 0x16u);

          v25 = v78;
        }

        v44 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
        [v80 addObject:v44];

        [v82 addObject:v39];
        if (v41 > v36)
        {
          v45 = v39;

          v83 = v45;
          v36 = v41;
        }
      }

      [v38 scoreForSuggestionMatchingType:1];
      if (v46 > 0.0)
      {
        v47 = v46;
        v48 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v39 localIdentifier];
          *buf = 138412546;
          v100 = v49;
          v101 = 2048;
          v102 = v47;
          _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: suggestion %@ matching participant with score %f", buf, 0x16u);
        }

        v50 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
        [v79 addObject:v50];

        [v81 addObject:v39];
        if (v47 <= v35)
        {
          if (v47 != v35)
          {
            goto LABEL_46;
          }
        }

        else
        {
          [v24 removeAllObjects];
          v35 = v47;
        }

        [v24 addObject:v39];
      }

LABEL_46:
    }

    v33 = [v25 countByEnumeratingWithState:&v88 objects:v97 count:16];
  }

  while (v33);
LABEL_50:

  v51 = [v82 count];
  if (!v51)
  {
    v56 = [v81 count];
    if (v56)
    {
      if (v56 == 1)
      {
        v26 = [v81 anyObject];
        v53 = PLPhotoKitGetLog();
        v27 = v77;
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        v54 = [v83 localIdentifier];
        *buf = 138412290;
        v100 = v54;
        v55 = "Message sharing suggestion: found a matching suggestion (%@) - unique suggestion matching participants";
      }

      else
      {
        v27 = v77;
        if ([(PHSuggestionMessageContext *)v76 numberOfParticipants]>= 2)
        {
          v68 = [v24 count];
          v69 = PLPhotoKitGetLog();
          v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
          if (v68 == 1)
          {
            if (v70)
            {
              v71 = [v83 localIdentifier];
              *buf = 138412290;
              v100 = v71;
              _os_log_impl(&dword_19C86F000, v69, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - suggestion that matches the most participants in the group thread", buf, 0xCu);
            }

            v72 = [v24 anyObject];
          }

          else
          {
            if (v70)
            {
              v74 = [v83 localIdentifier];
              *buf = 138412290;
              v100 = v74;
              _os_log_impl(&dword_19C86F000, v69, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - suggestion that matches the most participants in the group thread and is the most recent", buf, 0xCu);
            }

            v72 = [(PHSuggestionMessageContext *)v76 _mostRecentSuggestionFromSuggestions:v24];
          }

          v26 = v72;
          goto LABEL_88;
        }

        v26 = [(PHSuggestionMessageContext *)v76 _mostRecentSuggestionFromSuggestions:v81];
        v53 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        v54 = [v26 localIdentifier];
        *buf = 138412290;
        v100 = v54;
        v55 = "Message sharing suggestion: found a matching suggestion (%@) - most recent suggestion matching participants";
      }
    }

    else
    {
      v27 = v77;
      if (!v75)
      {
        v26 = 0;
        goto LABEL_88;
      }

      v26 = [(PHSuggestionMessageContext *)v76 _mostRecentSuggestionFromSuggestions:v12];
      v53 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      v54 = [v26 localIdentifier];
      *buf = 138412290;
      v100 = v54;
      v55 = "Message sharing suggestion: found several matching suggestions matching NLP Date Range - returning the most recent one %@";
    }

LABEL_86:
    _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);

    goto LABEL_87;
  }

  v52 = v51;
  if (v51 == 1)
  {
    v26 = [v82 anyObject];
    v53 = PLPhotoKitGetLog();
    v27 = v77;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v83 localIdentifier];
      *buf = 138412290;
      v100 = v54;
      v55 = "Message sharing suggestion: found a matching suggestion (%@) - unique suggestion matching NLP Context";
      goto LABEL_86;
    }

LABEL_87:
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v57 = v80;
    v58 = [v57 countByEnumeratingWithState:&v84 objects:v96 count:16];
    v27 = v77;
    if (v58)
    {
      v59 = v58;
      v60 = 0;
      v61 = *v85;
      while (2)
      {
        for (k = 0; k != v59; ++k)
        {
          if (*v85 != v61)
          {
            objc_enumerationMutation(v57);
          }

          [*(*(&v84 + 1) + 8 * k) doubleValue];
          if (v63 == v36)
          {
            if (v60)
            {
              goto LABEL_72;
            }

            v60 = 1;
          }

          else if (v36 < v63 + v63)
          {
LABEL_72:

            v26 = [(PHSuggestionMessageContext *)v76 _mostRecentSuggestionFromSuggestions:v82];
            v66 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = [v26 localIdentifier];
              *buf = 138412546;
              v100 = v67;
              v101 = 2048;
              v102 = *&v52;
              _os_log_impl(&dword_19C86F000, v66, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - most recent suggestion among the %lu suggestions matching NLP context", buf, 0x16u);
            }

            goto LABEL_75;
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v84 objects:v96 count:16];
        if (v59)
        {
          continue;
        }

        break;
      }
    }

    v64 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [v83 localIdentifier];
      *buf = 138412546;
      v100 = v65;
      v101 = 2048;
      v102 = *&v52;
      _os_log_impl(&dword_19C86F000, v64, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - outlier high score among %lu suggestions matching NLP context", buf, 0x16u);
    }

    v26 = v83;
LABEL_75:
    v25 = v78;
  }

LABEL_88:

LABEL_89:
LABEL_90:

  return v26;
}

- (id)matchingResultWithSuggestion:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62 = [[PHSuggestionMessageMatchingResult alloc] initWithSuggestion:v4 messageContext:self];
  v5 = self->_dateInterval;
  if (v5)
  {
    v6 = [v4 startDate];
    v7 = [v4 endDate];
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v6 endDate:v7];
    if ([(NSDateInterval *)v5 intersectsDateInterval:v8])
    {
      [(PHSuggestionMessageMatchingResult *)v62 registerMatchingType:3 weight:1.0];
    }
  }

  v9 = [v4 featuresProperties];
  v10 = [v9 objectForKeyedSubscript:@"features"];
  if ([v10 count])
  {
    v61 = [MEMORY[0x1E695DFA8] set];
    v60 = objc_opt_new();
    numberOfParticipants = self->_numberOfParticipants;
    if (numberOfParticipants | [(NSArray *)self->_messages count])
    {
      v63 = self;
      v56 = v9;
      v57 = v5;
      v58 = v4;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v55 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v79;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v79 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [PHTextFeature textFeatureWithData:*(*(&v78 + 1) + 8 * i)];
            if (!v17)
            {
              v18 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = v4;
                _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Failure reading text features from data for suggestion %@", buf, 0xCu);
              }

              goto LABEL_18;
            }

            [v61 addObject:v17];
            if (numberOfParticipants && [v17 type] == 1)
            {
              v18 = [v17 string];
              [v60 addObject:v18];
LABEL_18:
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v78 objects:v89 count:16];
        }

        while (v14);
      }

      if (numberOfParticipants && [v60 count])
      {
        v19 = [(PHSuggestionMessageContext *)v63 resolvedParticipants];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v74 objects:v88 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v75;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v75 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v74 + 1) + 8 * j);
              v25 = [v24 localIdentifier];
              v26 = [v25 lowercaseString];
              v27 = [v60 containsObject:v26];

              if (v27)
              {
                v28 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [v24 localIdentifier];
                  v30 = [v4 localIdentifier];
                  *buf = 138412546;
                  v85 = v29;
                  v86 = 2112;
                  v87 = v30;
                  _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "PHSuggestionMessageContext: Matched participant %@ between message context and suggestion %@", buf, 0x16u);
                }

                [(PHSuggestionMessageMatchingResult *)v62 registerMatchingType:1 weight:1.0];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v74 objects:v88 count:16];
          }

          while (v21);
        }
      }

      v31 = [(PHSuggestionMessageContext *)v63 messageTokens];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v61;
      v65 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v65)
      {
        v64 = *v71;
        do
        {
          for (k = 0; k != v65; ++k)
          {
            if (*v71 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v33 = [*(*(&v70 + 1) + 8 * k) string];
            v34 = [v33 componentsSeparatedByString:@"_"];
            v35 = [MEMORY[0x1E695DF70] array];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v36 = v34;
            v37 = [v36 countByEnumeratingWithState:&v66 objects:v82 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = 0;
              v40 = *v67;
              do
              {
                for (m = 0; m != v38; ++m)
                {
                  if (*v67 != v40)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v42 = *(*(&v66 + 1) + 8 * m);
                  if ([v31 containsObject:v42])
                  {
                    [v35 addObject:v42];
                    v43 = [v42 length];
                    if (v43 > v39)
                    {
                      v39 = v43;
                    }
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v66 objects:v82 count:16];
              }

              while (v38);
              v44 = v39 > 3;
            }

            else
            {
              v44 = 0;
            }

            v45 = [v35 count];
            if (v45)
            {
              v46 = v45;
              v47 = [v36 count];
              if (v46 == v47)
              {
                v48 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = [v35 componentsJoinedByString:{@", "}];
                  *buf = 138412546;
                  v85 = v49;
                  v86 = 2112;
                  v87 = v33;
                  _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEFAULT, "PHSuggestionMessageContext: Matched message tokens [%@] between message context and suggestion text feature %@", buf, 0x16u);
                }

                v50 = 1.0;
              }

              else
              {
                if (!v44)
                {
                  goto LABEL_62;
                }

                v51 = v47;
                v52 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  v53 = [v35 componentsJoinedByString:{@", "}];
                  *buf = 138412546;
                  v85 = v53;
                  v86 = 2112;
                  v87 = v33;
                  _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_DEFAULT, "PHSuggestionMessageContext: Matched message tokens [%@] between message context and suggestion text feature %@", buf, 0x16u);
                }

                v50 = v46 / v51;
              }

              [(PHSuggestionMessageMatchingResult *)v62 registerMatchingType:2 weight:v50];
            }

LABEL_62:
          }

          v65 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v65);
      }

      v4 = v58;
      v9 = v56;
      v5 = v57;
      v10 = v55;
    }
  }

  return v62;
}

- (void)matchWithSuggestions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_suggestionMatchingResultsBySuggestionIdentifier;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  suggestionMatchingResultsBySuggestionIdentifier = self->_suggestionMatchingResultsBySuggestionIdentifier;
  self->_suggestionMatchingResultsBySuggestionIdentifier = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 localIdentifier];
        v15 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:v14];
        if (v15)
        {
          [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier setObject:v15 forKeyedSubscript:v14];
        }

        else
        {
          v16 = [(PHSuggestionMessageContext *)self matchingResultWithSuggestion:v13];
          [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier setObject:v16 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)_suggestionsMatchingType:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier allValues];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 scoreForSuggestionMatchingType:a3];
        if (v12 != 0.0)
        {
          v13 = [v11 suggestion];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)detailedDescription
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = [(PHSuggestionMessageContext *)self _suggestionsMatchingType:3];
  v21 = [(PHSuggestionMessageContext *)self _suggestionsMatchingType:2];
  v20 = [(PHSuggestionMessageContext *)self _suggestionsMatchingType:1];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%lu", -[PHSuggestionMessageContext numberOfParticipants](self, "numberOfParticipants")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(PHSuggestionMessageContext *)self resolvedParticipants];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 localIdentifier];
        v11 = [v9 name];
        [v3 appendFormat:@" %@ (%@)", v11, v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v19 = MEMORY[0x1E696AEC0];
  v12 = [(NSArray *)self->_messages componentsJoinedByString:@", "];
  dateInterval = self->_dateInterval;
  if (!dateInterval)
  {
    dateInterval = @"None";
  }

  v18 = dateInterval;
  v14 = [(PHSuggestionMessageContext *)self messageTokens];
  v15 = [v14 componentsJoinedByString:@" "];
  v16 = [v19 stringWithFormat:@"Message Context:\n\tParticipants: %@\n\tMessages: %@\n\tTime constraint: %@\n\tTokens:%@\n\tSuggestions: %lu\n\tSuggestions matching time constraints: %lu\n\tSuggestions matching message: %lu\n\tSuggestions matching participants: %lu", v3, v12, v18, v15, self->_suggestionMatchingResultsBySuggestionIdentifier, objc_msgSend(v22, "count"), objc_msgSend(v21, "count"), objc_msgSend(v20, "count")];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PHSuggestionMessageContext;
  v4 = [(PHSuggestionMessageContext *)&v9 description];
  v5 = [(PHSuggestionMessageContext *)self numberOfParticipants];
  v6 = [(NSArray *)self->_messages componentsJoinedByString:@" "];
  v7 = [v3 stringWithFormat:@"%@ Participants=%lu, messages=%@", v4, v5, v6];

  return v7;
}

- (NSArray)messageTokens
{
  v21 = *MEMORY[0x1E69E9840];
  messageTokens = self->_messageTokens;
  if (!messageTokens)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_messages;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x1E69BE5E0];
          v11 = [*(*(&v16 + 1) + 8 * v9) lowercaseString];
          v12 = [v10 tokensFromString:v11 options:14];

          [v4 addObjectsFromArray:v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
    v14 = self->_messageTokens;
    self->_messageTokens = v13;

    messageTokens = self->_messageTokens;
  }

  return messageTokens;
}

- (NSArray)resolvedParticipants
{
  resolvedParticipants = self->_resolvedParticipants;
  if (!resolvedParticipants)
  {
    if ([(NSArray *)self->_phParticipants count])
    {
      v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_phParticipants];
      v5 = self->_resolvedParticipants;
      self->_resolvedParticipants = v4;
    }

    else
    {
      if ([(NSArray *)self->_cnParticipants count])
      {
        cnParticipants = self->_cnParticipants;
        v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
        v8 = [PHPerson fetchPersonsForContacts:cnParticipants options:v7];
      }

      else
      {
        v9 = [PHManualFetchResult alloc];
        photoLibrary = self->_photoLibrary;
        v7 = +[PHPerson fetchType];
        v8 = [(PHManualFetchResult *)v9 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:v7 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
      }

      v5 = v8;

      v11 = [(NSArray *)v5 fetchedObjects];
      v12 = self->_resolvedParticipants;
      self->_resolvedParticipants = v11;
    }

    resolvedParticipants = self->_resolvedParticipants;
  }

  return resolvedParticipants;
}

- (void)setPhParticipants:(id)a3
{
  objc_storeStrong(&self->_phParticipants, a3);
  v6 = a3;
  resolvedParticipants = self->_resolvedParticipants;
  self->_resolvedParticipants = 0;
}

- (void)setCnParticipants:(id)a3
{
  objc_storeStrong(&self->_cnParticipants, a3);
  v6 = a3;
  resolvedParticipants = self->_resolvedParticipants;
  self->_resolvedParticipants = 0;
}

- (PHSuggestionMessageContext)initWithMessages:(id)a3 participantsFromPersons:(id)a4 photoLibrary:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(PHSuggestionMessageContext *)self initWithMessages:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a5);
    objc_storeStrong(&v12->_phParticipants, a4);
    v12->_numberOfParticipants = [v9 count];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    suggestionMatchingResultsBySuggestionIdentifier = v12->_suggestionMatchingResultsBySuggestionIdentifier;
    v12->_suggestionMatchingResultsBySuggestionIdentifier = v13;
  }

  return v12;
}

- (PHSuggestionMessageContext)initWithMessages:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PHSuggestionMessageContext;
  v5 = [(PHSuggestionMessageContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    messages = v5->_messages;
    v5->_messages = v6;

    messageTokens = v5->_messageTokens;
    v5->_messageTokens = 0;

    v9 = [v4 componentsJoinedByString:@"\n"];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [MEMORY[0x1E69BE5E0] dateIntervalsFromMessage:v9 onDate:v10];
    v12 = [v11 count];
    if (v12)
    {
      v12 = [v11 firstObject];
    }

    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v12;
  }

  return v5;
}

- (PHSuggestionMessageContext)initWithMessages:(id)a3 participantsFromContacts:(id)a4 photoLibrary:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(PHSuggestionMessageContext *)self initWithMessages:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a5);
    objc_storeStrong(&v12->_cnParticipants, a4);
    v12->_numberOfParticipants = [v9 count];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    suggestionMatchingResultsBySuggestionIdentifier = v12->_suggestionMatchingResultsBySuggestionIdentifier;
    v12->_suggestionMatchingResultsBySuggestionIdentifier = v13;
  }

  return v12;
}

@end