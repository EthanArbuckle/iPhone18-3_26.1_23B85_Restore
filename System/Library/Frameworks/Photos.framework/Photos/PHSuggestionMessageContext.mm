@interface PHSuggestionMessageContext
- (NSArray)messageTokens;
- (NSArray)resolvedParticipants;
- (PHSuggestionMessageContext)initWithMessages:(id)messages;
- (PHSuggestionMessageContext)initWithMessages:(id)messages participantsFromContacts:(id)contacts photoLibrary:(id)library;
- (PHSuggestionMessageContext)initWithMessages:(id)messages participantsFromPersons:(id)persons photoLibrary:(id)library;
- (id)_mostRecentSuggestionFromSuggestions:(id)suggestions;
- (id)_suggestionsMatchingType:(int64_t)type;
- (id)confidentMatchSuggestionUsingStrategy:(unint64_t)strategy;
- (id)description;
- (id)detailedDescription;
- (id)matchingResultWithSuggestion:(id)suggestion;
- (void)matchWithSuggestions:(id)suggestions;
- (void)setCnParticipants:(id)participants;
- (void)setPhParticipants:(id)participants;
@end

@implementation PHSuggestionMessageContext

- (id)_mostRecentSuggestionFromSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  anyObject = [suggestionsCopy anyObject];
  startDate = [anyObject startDate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = suggestionsCopy;
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
        startDate2 = [v11 startDate];
        if ([startDate2 compare:startDate] >= 1)
        {
          v13 = startDate2;

          v14 = v11;
          startDate = v13;
          anyObject = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return anyObject;
}

- (id)confidentMatchSuggestionUsingStrategy:(unint64_t)strategy
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    suggestionMatchingResultsBySuggestionIdentifier = [(PHSuggestionMessageContext *)self suggestionMatchingResultsBySuggestionIdentifier];
    v7 = [suggestionMatchingResultsBySuggestionIdentifier count];
    numberOfParticipants = [(PHSuggestionMessageContext *)self numberOfParticipants];
    messages = [(PHSuggestionMessageContext *)self messages];
    *buf = 134218752;
    strategyCopy = strategy;
    v101 = 2048;
    v102 = *&v7;
    v103 = 2048;
    v104 = numberOfParticipants;
    v105 = 1024;
    v106 = [messages count] != 0;
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

    suggestion2 = 0;
    goto LABEL_90;
  }

  allValues = [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier allValues];
  selfCopy = self;
  dateInterval = [(PHSuggestionMessageContext *)self dateInterval];

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E695DFA8] set];
  v75 = dateInterval;
  v77 = allValues;
  if (dateInterval)
  {
    v14 = [MEMORY[0x1E695DFA8] set];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v15 = allValues;
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
            suggestion = [v20 suggestion];
            [v12 addObject:suggestion];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v92 objects:v98 count:16];
      }

      while (v17);
    }

    v23 = [v14 count];
    if (!(strategy | v23))
    {
      v83 = v14;
      v24 = PLPhotoKitGetLog();
      v25 = v13;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: No result - NLP Date range is found and no suggestion is matching it", buf, 2u);
      }

      suggestion2 = 0;
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
        anyObject = [v14 anyObject];
        suggestion2 = [anyObject suggestion];

        v24 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier = [suggestion2 localIdentifier];
          *buf = 138412290;
          strategyCopy = localIdentifier;
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
        strategyCopy = v31;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: filtering out the candidate set to the %lu suggestions matching NLP Date Range", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = [allValues mutableCopy];
    v14 = v13;
  }

  v24 = [MEMORY[0x1E695DFA8] set];
  v82 = [MEMORY[0x1E695DFA8] set];
  v81 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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
      suggestion3 = [v38 suggestion];
      [v38 scoreForSuggestionMatchingType:2];
      if (v40 > 0.0)
      {
        v41 = v40;
        v42 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier2 = [suggestion3 localIdentifier];
          *buf = 138412546;
          strategyCopy = localIdentifier2;
          v101 = 2048;
          v102 = v41;
          _os_log_impl(&dword_19C86F000, v42, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: suggestion %@ matching nlp context with score %f", buf, 0x16u);

          v25 = v78;
        }

        v44 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
        [array addObject:v44];

        [v82 addObject:suggestion3];
        if (v41 > v36)
        {
          v45 = suggestion3;

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
          localIdentifier3 = [suggestion3 localIdentifier];
          *buf = 138412546;
          strategyCopy = localIdentifier3;
          v101 = 2048;
          v102 = v47;
          _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: suggestion %@ matching participant with score %f", buf, 0x16u);
        }

        v50 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
        [array2 addObject:v50];

        [v81 addObject:suggestion3];
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

        [v24 addObject:suggestion3];
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
        suggestion2 = [v81 anyObject];
        v53 = PLPhotoKitGetLog();
        v27 = v77;
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        localIdentifier4 = [v83 localIdentifier];
        *buf = 138412290;
        strategyCopy = localIdentifier4;
        v55 = "Message sharing suggestion: found a matching suggestion (%@) - unique suggestion matching participants";
      }

      else
      {
        v27 = v77;
        if ([(PHSuggestionMessageContext *)selfCopy numberOfParticipants]>= 2)
        {
          v68 = [v24 count];
          v69 = PLPhotoKitGetLog();
          v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
          if (v68 == 1)
          {
            if (v70)
            {
              localIdentifier5 = [v83 localIdentifier];
              *buf = 138412290;
              strategyCopy = localIdentifier5;
              _os_log_impl(&dword_19C86F000, v69, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - suggestion that matches the most participants in the group thread", buf, 0xCu);
            }

            anyObject2 = [v24 anyObject];
          }

          else
          {
            if (v70)
            {
              localIdentifier6 = [v83 localIdentifier];
              *buf = 138412290;
              strategyCopy = localIdentifier6;
              _os_log_impl(&dword_19C86F000, v69, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - suggestion that matches the most participants in the group thread and is the most recent", buf, 0xCu);
            }

            anyObject2 = [(PHSuggestionMessageContext *)selfCopy _mostRecentSuggestionFromSuggestions:v24];
          }

          suggestion2 = anyObject2;
          goto LABEL_88;
        }

        suggestion2 = [(PHSuggestionMessageContext *)selfCopy _mostRecentSuggestionFromSuggestions:v81];
        v53 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        localIdentifier4 = [suggestion2 localIdentifier];
        *buf = 138412290;
        strategyCopy = localIdentifier4;
        v55 = "Message sharing suggestion: found a matching suggestion (%@) - most recent suggestion matching participants";
      }
    }

    else
    {
      v27 = v77;
      if (!v75)
      {
        suggestion2 = 0;
        goto LABEL_88;
      }

      suggestion2 = [(PHSuggestionMessageContext *)selfCopy _mostRecentSuggestionFromSuggestions:v12];
      v53 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      localIdentifier4 = [suggestion2 localIdentifier];
      *buf = 138412290;
      strategyCopy = localIdentifier4;
      v55 = "Message sharing suggestion: found several matching suggestions matching NLP Date Range - returning the most recent one %@";
    }

LABEL_86:
    _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);

    goto LABEL_87;
  }

  v52 = v51;
  if (v51 == 1)
  {
    suggestion2 = [v82 anyObject];
    v53 = PLPhotoKitGetLog();
    v27 = v77;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier4 = [v83 localIdentifier];
      *buf = 138412290;
      strategyCopy = localIdentifier4;
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
    v57 = array;
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

            suggestion2 = [(PHSuggestionMessageContext *)selfCopy _mostRecentSuggestionFromSuggestions:v82];
            v66 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier7 = [suggestion2 localIdentifier];
              *buf = 138412546;
              strategyCopy = localIdentifier7;
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
      localIdentifier8 = [v83 localIdentifier];
      *buf = 138412546;
      strategyCopy = localIdentifier8;
      v101 = 2048;
      v102 = *&v52;
      _os_log_impl(&dword_19C86F000, v64, OS_LOG_TYPE_DEFAULT, "Message sharing suggestion: found a matching suggestion (%@) - outlier high score among %lu suggestions matching NLP context", buf, 0x16u);
    }

    suggestion2 = v83;
LABEL_75:
    v25 = v78;
  }

LABEL_88:

LABEL_89:
LABEL_90:

  return suggestion2;
}

- (id)matchingResultWithSuggestion:(id)suggestion
{
  v90 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v62 = [[PHSuggestionMessageMatchingResult alloc] initWithSuggestion:suggestionCopy messageContext:self];
  v5 = self->_dateInterval;
  if (v5)
  {
    startDate = [suggestionCopy startDate];
    endDate = [suggestionCopy endDate];
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:endDate];
    if ([(NSDateInterval *)v5 intersectsDateInterval:v8])
    {
      [(PHSuggestionMessageMatchingResult *)v62 registerMatchingType:3 weight:1.0];
    }
  }

  featuresProperties = [suggestionCopy featuresProperties];
  v10 = [featuresProperties objectForKeyedSubscript:@"features"];
  if ([v10 count])
  {
    v61 = [MEMORY[0x1E695DFA8] set];
    v60 = objc_opt_new();
    numberOfParticipants = self->_numberOfParticipants;
    if (numberOfParticipants | [(NSArray *)self->_messages count])
    {
      selfCopy = self;
      v56 = featuresProperties;
      v57 = v5;
      v58 = suggestionCopy;
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
              string = PLPhotoKitGetLog();
              if (os_log_type_enabled(string, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = suggestionCopy;
                _os_log_impl(&dword_19C86F000, string, OS_LOG_TYPE_ERROR, "Failure reading text features from data for suggestion %@", buf, 0xCu);
              }

              goto LABEL_18;
            }

            [v61 addObject:v17];
            if (numberOfParticipants && [v17 type] == 1)
            {
              string = [v17 string];
              [v60 addObject:string];
LABEL_18:
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v78 objects:v89 count:16];
        }

        while (v14);
      }

      if (numberOfParticipants && [v60 count])
      {
        resolvedParticipants = [(PHSuggestionMessageContext *)selfCopy resolvedParticipants];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v20 = [resolvedParticipants countByEnumeratingWithState:&v74 objects:v88 count:16];
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
                objc_enumerationMutation(resolvedParticipants);
              }

              v24 = *(*(&v74 + 1) + 8 * j);
              localIdentifier = [v24 localIdentifier];
              lowercaseString = [localIdentifier lowercaseString];
              v27 = [v60 containsObject:lowercaseString];

              if (v27)
              {
                v28 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  localIdentifier2 = [v24 localIdentifier];
                  localIdentifier3 = [suggestionCopy localIdentifier];
                  *buf = 138412546;
                  v85 = localIdentifier2;
                  v86 = 2112;
                  v87 = localIdentifier3;
                  _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "PHSuggestionMessageContext: Matched participant %@ between message context and suggestion %@", buf, 0x16u);
                }

                [(PHSuggestionMessageMatchingResult *)v62 registerMatchingType:1 weight:1.0];
              }
            }

            v21 = [resolvedParticipants countByEnumeratingWithState:&v74 objects:v88 count:16];
          }

          while (v21);
        }
      }

      messageTokens = [(PHSuggestionMessageContext *)selfCopy messageTokens];
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

            string2 = [*(*(&v70 + 1) + 8 * k) string];
            v34 = [string2 componentsSeparatedByString:@"_"];
            array = [MEMORY[0x1E695DF70] array];
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
                  if ([messageTokens containsObject:v42])
                  {
                    [array addObject:v42];
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

            v45 = [array count];
            if (v45)
            {
              v46 = v45;
              v47 = [v36 count];
              if (v46 == v47)
              {
                v48 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = [array componentsJoinedByString:{@", "}];
                  *buf = 138412546;
                  v85 = v49;
                  v86 = 2112;
                  v87 = string2;
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
                  v53 = [array componentsJoinedByString:{@", "}];
                  *buf = 138412546;
                  v85 = v53;
                  v86 = 2112;
                  v87 = string2;
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

      suggestionCopy = v58;
      featuresProperties = v56;
      v5 = v57;
      v10 = v55;
    }
  }

  return v62;
}

- (void)matchWithSuggestions:(id)suggestions
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v5 = self->_suggestionMatchingResultsBySuggestionIdentifier;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  suggestionMatchingResultsBySuggestionIdentifier = self->_suggestionMatchingResultsBySuggestionIdentifier;
  self->_suggestionMatchingResultsBySuggestionIdentifier = dictionary;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = suggestionsCopy;
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
        localIdentifier = [v13 localIdentifier];
        v15 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:localIdentifier];
        if (v15)
        {
          [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier setObject:v15 forKeyedSubscript:localIdentifier];
        }

        else
        {
          v16 = [(PHSuggestionMessageContext *)self matchingResultWithSuggestion:v13];
          [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier setObject:v16 forKeyedSubscript:localIdentifier];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)_suggestionsMatchingType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] set];
  allValues = [(NSMutableDictionary *)self->_suggestionMatchingResultsBySuggestionIdentifier allValues];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 scoreForSuggestionMatchingType:type];
        if (v12 != 0.0)
        {
          suggestion = [v11 suggestion];
          [v5 addObject:suggestion];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  resolvedParticipants = [(PHSuggestionMessageContext *)self resolvedParticipants];
  v5 = [resolvedParticipants countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(resolvedParticipants);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        localIdentifier = [v9 localIdentifier];
        name = [v9 name];
        [v3 appendFormat:@" %@ (%@)", name, localIdentifier];
      }

      v6 = [resolvedParticipants countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  messageTokens = [(PHSuggestionMessageContext *)self messageTokens];
  v15 = [messageTokens componentsJoinedByString:@" "];
  v16 = [v19 stringWithFormat:@"Message Context:\n\tParticipants: %@\n\tMessages: %@\n\tTime constraint: %@\n\tTokens:%@\n\tSuggestions: %lu\n\tSuggestions matching time constraints: %lu\n\tSuggestions matching message: %lu\n\tSuggestions matching participants: %lu", v3, v12, v18, v15, self->_suggestionMatchingResultsBySuggestionIdentifier, objc_msgSend(v22, "count"), objc_msgSend(v21, "count"), objc_msgSend(v20, "count")];

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PHSuggestionMessageContext;
  v4 = [(PHSuggestionMessageContext *)&v9 description];
  numberOfParticipants = [(PHSuggestionMessageContext *)self numberOfParticipants];
  v6 = [(NSArray *)self->_messages componentsJoinedByString:@" "];
  v7 = [v3 stringWithFormat:@"%@ Participants=%lu, messages=%@", v4, numberOfParticipants, v6];

  return v7;
}

- (NSArray)messageTokens
{
  v21 = *MEMORY[0x1E69E9840];
  messageTokens = self->_messageTokens;
  if (!messageTokens)
  {
    array = [MEMORY[0x1E695DF70] array];
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
          lowercaseString = [*(*(&v16 + 1) + 8 * v9) lowercaseString];
          v12 = [v10 tokensFromString:lowercaseString options:14];

          [array addObjectsFromArray:v12];
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
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
        librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
        v8 = [PHPerson fetchPersonsForContacts:cnParticipants options:librarySpecificFetchOptions];
      }

      else
      {
        v9 = [PHManualFetchResult alloc];
        photoLibrary = self->_photoLibrary;
        librarySpecificFetchOptions = +[PHPerson fetchType];
        v8 = [(PHManualFetchResult *)v9 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:librarySpecificFetchOptions fetchPropertySets:0 identifier:0 registerIfNeeded:0];
      }

      v5 = v8;

      fetchedObjects = [(NSArray *)v5 fetchedObjects];
      v12 = self->_resolvedParticipants;
      self->_resolvedParticipants = fetchedObjects;
    }

    resolvedParticipants = self->_resolvedParticipants;
  }

  return resolvedParticipants;
}

- (void)setPhParticipants:(id)participants
{
  objc_storeStrong(&self->_phParticipants, participants);
  participantsCopy = participants;
  resolvedParticipants = self->_resolvedParticipants;
  self->_resolvedParticipants = 0;
}

- (void)setCnParticipants:(id)participants
{
  objc_storeStrong(&self->_cnParticipants, participants);
  participantsCopy = participants;
  resolvedParticipants = self->_resolvedParticipants;
  self->_resolvedParticipants = 0;
}

- (PHSuggestionMessageContext)initWithMessages:(id)messages participantsFromPersons:(id)persons photoLibrary:(id)library
{
  personsCopy = persons;
  libraryCopy = library;
  v11 = [(PHSuggestionMessageContext *)self initWithMessages:messages];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_phParticipants, persons);
    v12->_numberOfParticipants = [personsCopy count];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    suggestionMatchingResultsBySuggestionIdentifier = v12->_suggestionMatchingResultsBySuggestionIdentifier;
    v12->_suggestionMatchingResultsBySuggestionIdentifier = dictionary;
  }

  return v12;
}

- (PHSuggestionMessageContext)initWithMessages:(id)messages
{
  messagesCopy = messages;
  v15.receiver = self;
  v15.super_class = PHSuggestionMessageContext;
  v5 = [(PHSuggestionMessageContext *)&v15 init];
  if (v5)
  {
    v6 = [messagesCopy copy];
    messages = v5->_messages;
    v5->_messages = v6;

    messageTokens = v5->_messageTokens;
    v5->_messageTokens = 0;

    v9 = [messagesCopy componentsJoinedByString:@"\n"];
    date = [MEMORY[0x1E695DF00] date];
    v11 = [MEMORY[0x1E69BE5E0] dateIntervalsFromMessage:v9 onDate:date];
    firstObject = [v11 count];
    if (firstObject)
    {
      firstObject = [v11 firstObject];
    }

    dateInterval = v5->_dateInterval;
    v5->_dateInterval = firstObject;
  }

  return v5;
}

- (PHSuggestionMessageContext)initWithMessages:(id)messages participantsFromContacts:(id)contacts photoLibrary:(id)library
{
  contactsCopy = contacts;
  libraryCopy = library;
  v11 = [(PHSuggestionMessageContext *)self initWithMessages:messages];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    objc_storeStrong(&v12->_cnParticipants, contacts);
    v12->_numberOfParticipants = [contactsCopy count];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    suggestionMatchingResultsBySuggestionIdentifier = v12->_suggestionMatchingResultsBySuggestionIdentifier;
    v12->_suggestionMatchingResultsBySuggestionIdentifier = dictionary;
  }

  return v12;
}

@end