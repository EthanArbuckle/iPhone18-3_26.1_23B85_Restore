@interface EKVirtualConferenceRoomTypeRecents
+ (id)_extensionBundleIdentifierFromIdentifier:(id)identifier;
+ (id)_identifierFromRoomType:(id)type;
+ (id)roomTypesOrderedByMRU:(id)u forSource:(id)source;
+ (void)_updateSavedMRUDictWithRoomTypes:(id)types source:(id)source;
+ (void)cleanup;
+ (void)selectRoomType:(id)type forSource:(id)source;
@end

@implementation EKVirtualConferenceRoomTypeRecents

+ (id)roomTypesOrderedByMRU:(id)u forSource:(id)source
{
  uCopy = u;
  sourceCopy = source;
  sourceIdentifier = [sourceCopy sourceIdentifier];
  if (sourceIdentifier)
  {
    [self _updateSavedMRUDictWithRoomTypes:uCopy source:sourceCopy];
    v9 = +[EKPreferences shared];
    conferenceRoomTypeIdentifiersByMRU = [v9 conferenceRoomTypeIdentifiersByMRU];

    sourceIdentifier2 = [sourceCopy sourceIdentifier];
    v12 = [conferenceRoomTypeIdentifiersByMRU objectForKey:sourceIdentifier2];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__EKVirtualConferenceRoomTypeRecents_roomTypesOrderedByMRU_forSource___block_invoke;
    v22[3] = &unk_1E77FE198;
    v23 = v12;
    selfCopy = self;
    v13 = v12;
    v14 = [uCopy sortedArrayUsingComparator:v22];
  }

  else
  {
    conferenceRoomTypeIdentifiersByMRU = +[EKLogSubsystem defaultCategory];
    if (os_log_type_enabled(conferenceRoomTypeIdentifiersByMRU, OS_LOG_TYPE_ERROR))
    {
      [(EKVirtualConferenceRoomTypeRecents *)sourceCopy roomTypesOrderedByMRU:conferenceRoomTypeIdentifiersByMRU forSource:v15, v16, v17, v18, v19, v20];
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __70__EKVirtualConferenceRoomTypeRecents_roomTypesOrderedByMRU_forSource___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 _identifierFromRoomType:a2];
  v8 = [*(a1 + 40) _identifierFromRoomType:v6];

  v9 = [*(a1 + 32) indexOfObject:v7];
  v10 = [*(a1 + 32) indexOfObject:v8];
  if (v9 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 > v10;
  }

  return v11;
}

+ (void)selectRoomType:(id)type forSource:(id)source
{
  v24[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  sourceCopy = source;
  sourceIdentifier = [sourceCopy sourceIdentifier];
  if (sourceIdentifier)
  {
    v24[0] = typeCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [self _updateSavedMRUDictWithRoomTypes:v9 source:sourceCopy];

    v10 = [self _identifierFromRoomType:typeCopy];
    v11 = +[EKPreferences shared];
    conferenceRoomTypeIdentifiersByMRU = [v11 conferenceRoomTypeIdentifiersByMRU];

    v13 = [conferenceRoomTypeIdentifiersByMRU objectForKey:sourceIdentifier];
    v14 = [v13 mutableCopy];
    [v14 removeObject:v10];
    [v14 insertObject:v10 atIndex:0];
    v15 = [conferenceRoomTypeIdentifiersByMRU mutableCopy];
    [v15 setObject:v14 forKey:sourceIdentifier];
    v16 = +[EKPreferences shared];
    [v16 setConferenceRoomTypeIdentifiersByMRU:v15];
  }

  else
  {
    v10 = +[EKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(EKVirtualConferenceRoomTypeRecents *)sourceCopy selectRoomType:v10 forSource:v17, v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

+ (void)_updateSavedMRUDictWithRoomTypes:(id)types source:(id)source
{
  v38 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  sourceCopy = source;
  sourceIdentifier = [sourceCopy sourceIdentifier];
  if (sourceIdentifier)
  {
    v31 = sourceCopy;
    v9 = +[EKPreferences shared];
    conferenceRoomTypeIdentifiersByMRU = [v9 conferenceRoomTypeIdentifiersByMRU];

    v30 = conferenceRoomTypeIdentifiersByMRU;
    dictionary = [conferenceRoomTypeIdentifiersByMRU mutableCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = [dictionary objectForKey:sourceIdentifier];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
    }

    [dictionary setObject:v13 forKey:sourceIdentifier];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = typesCopy;
    v15 = typesCopy;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [self _identifierFromRoomType:*(*(&v33 + 1) + 8 * i)];
          if (([v13 containsObject:v20] & 1) == 0)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    [v13 addObjectsFromArray:v14];
    v21 = +[EKPreferences shared];
    [v21 setConferenceRoomTypeIdentifiersByMRU:dictionary];

    sourceCopy = v31;
    typesCopy = v32;
    v22 = v30;
  }

  else
  {
    v22 = +[EKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(EKVirtualConferenceRoomTypeRecents *)sourceCopy _updateSavedMRUDictWithRoomTypes:v22 source:v23, v24, v25, v26, v27, v28];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)cleanup
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = +[EKPreferences shared];
  conferenceRoomTypeIdentifiersByMRU = [v2 conferenceRoomTypeIdentifiersByMRU];

  v4 = [conferenceRoomTypeIdentifiersByMRU mutableCopy];
  v5 = objc_alloc_init(EKEventStore);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = conferenceRoomTypeIdentifiersByMRU;
  v7 = [v6 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        v12 = [(EKEventStore *)v5 sourceWithIdentifier:v11];
        if (!v12)
        {
          [v4 removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v8);
  }

  v39 = v5;

  v13 = [v4 copy];
  v14 = [MEMORY[0x1E695DFA8] set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v13;
  v42 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v42)
  {
    v40 = *v57;
    v41 = v4;
    do
    {
      v15 = 0;
      do
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v15;
        v16 = *(*(&v56 + 1) + 8 * v15);
        v17 = [obj objectForKeyedSubscript:{v16, v39}];
        v18 = [v17 mutableCopy];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v44 = v16;
        v19 = [obj objectForKeyedSubscript:v16];
        v20 = [v19 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v52 + 1) + 8 * j);
              v25 = [self _extensionBundleIdentifierFromIdentifier:v24];
              if ([v14 containsObject:v25])
              {
                [v18 removeObject:v24];
              }

              else
              {
                v26 = objc_alloc(MEMORY[0x1E69635D0]);
                v51 = 0;
                v27 = [v26 initWithBundleIdentifier:v25 error:&v51];
                v28 = v51;
                if (!v27)
                {
                  [v14 addObject:v25];
                  [v18 removeObject:v24];
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v52 objects:v65 count:16];
          }

          while (v21);
        }

        v4 = v41;
        [v41 setObject:v18 forKeyedSubscript:v44];

        v15 = v45 + 1;
      }

      while (v45 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v42);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = obj;
  v30 = [v29 countByEnumeratingWithState:&v47 objects:v64 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v48;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v47 + 1) + 8 * k);
        v35 = [v4 objectForKeyedSubscript:{v34, v39}];
        v36 = [v35 mutableCopy];

        if ([v36 count] >= 0xB)
        {
          do
          {
            [v36 removeLastObject];
          }

          while ([v36 count] > 0xA);
        }

        [v4 setObject:v36 forKeyedSubscript:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v47 objects:v64 count:16];
    }

    while (v31);
  }

  v37 = +[EKPreferences shared];
  [v37 setConferenceRoomTypeIdentifiersByMRU:v4];

  v38 = *MEMORY[0x1E69E9840];
}

+ (id)_identifierFromRoomType:(id)type
{
  v3 = MEMORY[0x1E696AEC0];
  typeCopy = type;
  extensionBundleIdentifier = [typeCopy extensionBundleIdentifier];
  identifier = [typeCopy identifier];

  v7 = [v3 stringWithFormat:@"%@%@%@", extensionBundleIdentifier, @"/", identifier];

  return v7;
}

+ (id)_extensionBundleIdentifierFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@"/"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [identifierCopy substringWithRange:{0, v4}];
  }

  return v5;
}

+ (void)roomTypesOrderedByMRU:(uint64_t)a3 forSource:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "roomTypesOrderedByMRU: unexpected nil identifier for source: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)selectRoomType:(uint64_t)a3 forSource:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "selectRoomType: unexpected nil identifier for source: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_updateSavedMRUDictWithRoomTypes:(uint64_t)a3 source:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "_updateSavedMRUDictWithRoomTypes: unexpected nil identifier for source: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end