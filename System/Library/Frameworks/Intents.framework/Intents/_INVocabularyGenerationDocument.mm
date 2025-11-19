@interface _INVocabularyGenerationDocument
- (_INVocabularyGenerationDocument)initWithContentsOfFile:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_everyVocabularyItemSiriID;
- (id)_initWithDictionary:(id)a3;
- (id)_itemsBySiriID;
- (id)_stringForSelector:(SEL)a3 from:(id)a4;
- (id)_valueForSelector:(SEL)a3 ofClass:(Class)a4 from:(id)a5;
- (id)_vocabularyItemForSiriID:(id)a3;
- (id)_vocabularyItemWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)diffFromPreviousDocument:(id)a3;
- (id)writeToFile:(id)a3 createIntermediateDirectories:(BOOL)a4;
- (void)_addValueForSelector:(SEL)a3 toDictionary:(id)a4;
- (void)_clearVocabularyItemCaches;
- (void)_takeValuesFromDictionary:(id)a3;
- (void)assignMissingSiriIDsForOptimalDiffFromPreviousDocument:(id)a3;
- (void)setVocabularyItems:(id)a3;
@end

@implementation _INVocabularyGenerationDocument

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(_INVocabularyGenerationDocument *)self resetOnNextSync])
  {
    v5 = @"requires reset, ";
  }

  else
  {
    v5 = &stru_1F01E0850;
  }

  v6 = [(_INVocabularyGenerationDocument *)self thisGeneration];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [v3 stringWithFormat:@"<%@ %p>{%@at %@, %@ items}", v4, self, v5, v6, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_INVocabularyGenerationDocument *)self _dictionaryRepresentation];
  v6 = [v4 _initWithDictionary:v5];

  return v6;
}

- (_INVocabularyGenerationDocument)initWithContentsOfFile:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  if (v5)
  {
    self = [(_INVocabularyGenerationDocument *)self _initWithDictionary:v5];
    v6 = self;
  }

  else
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[_INVocabularyGenerationDocument initWithContentsOfFile:]";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s No file at %@", &v10, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)writeToFile:(id)a3 createIntermediateDirectories:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 stringByDeletingLastPathComponent];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:MEMORY[0x1E695E0F8] error:&v21];
    v11 = v21;

    if (!v10)
    {
      v16 = v11;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E696AE40];
  v13 = [(_INVocabularyGenerationDocument *)self _dictionaryRepresentation];
  v20 = 0;
  v8 = [v12 dataWithPropertyList:v13 format:200 options:0 error:&v20];
  v14 = v20;

  v19 = v14;
  v15 = [v8 writeToFile:v7 options:1073741825 error:&v19];
  v16 = v19;

  if (v15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v16;
  }

LABEL_9:
  v17 = v11;

  return v11;
}

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _INVocabularyGenerationDocument;
  v5 = [(_INVocabularyGenerationDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_INVocabularyGenerationDocument *)v5 _takeValuesFromDictionary:v4];
  }

  return v6;
}

- (void)_takeValuesFromDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = [v4 valueForKey:@"version"];
  if (([v25 isEqual:&unk_1F02D7ED0] & 1) == 0)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "[_INVocabularyGenerationDocument _takeValuesFromDictionary:]";
      v36 = 2080;
      v37 = "[_INVocabularyGenerationDocument _takeValuesFromDictionary:]";
      _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s %s dictionary is missing version number", buf, 0x16u);
    }
  }

  v6 = [v4 valueForKey:@"resetOnNextSync"];
  -[_INVocabularyGenerationDocument setResetOnNextSync:](self, "setResetOnNextSync:", [v6 BOOLValue]);

  v7 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_validity from:v4];
  [(_INVocabularyGenerationDocument *)self setValidity:v7];

  v8 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_thisGeneration from:v4];
  [(_INVocabularyGenerationDocument *)self setThisGeneration:v8];

  v9 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_appBundleID from:v4];
  [(_INVocabularyGenerationDocument *)self setAppBundleID:v9];

  v10 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_intentSlot from:v4];
  [(_INVocabularyGenerationDocument *)self setIntentSlot:v10];

  v26 = v4;
  v11 = [(_INVocabularyGenerationDocument *)self _valueForSelector:sel_vocabularyItems ofClass:objc_opt_class() from:v4];
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_string from:v16];
          v18 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel_vocabularyIdentifier from:v16];
          v19 = [(_INVocabularyGenerationDocument *)self _valueForSelector:sel_requiresUserIdentification ofClass:objc_opt_class() from:v16];
          v20 = [v19 BOOLValue];

          if (v17)
          {
            v21 = [[_INVocabularyItem alloc] initWithString:v17 vocabularyIdentifier:v18 requiresUserIdentification:v20];
            v22 = [(_INVocabularyGenerationDocument *)self _stringForSelector:sel__siriID from:v16];
            if (v22)
            {
              v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v22];
              [(_INVocabularyItem *)v21 _setSiriID:v23];
            }

            [v27 addObject:v21];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  [(_INVocabularyGenerationDocument *)self setVocabularyItems:v27];
  v24 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithObject:&unk_1F02D7ED0 forKey:@"version"];
  if ([(_INVocabularyGenerationDocument *)self resetOnNextSync])
  {
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"resetOnNextSync"];
  }

  [(_INVocabularyGenerationDocument *)self _addValueForSelector:sel_validity toDictionary:v3];
  [(_INVocabularyGenerationDocument *)self _addValueForSelector:sel_thisGeneration toDictionary:v3];
  [(_INVocabularyGenerationDocument *)self _addValueForSelector:sel_appBundleID toDictionary:v3];
  [(_INVocabularyGenerationDocument *)self _addValueForSelector:sel_intentSlot toDictionary:v3];
  v4 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
  v5 = [v4 valueForKey:@"_dictionaryForSaving"];

  [v3 setValue:v5 forKey:@"vocabularyItems"];

  return v3;
}

- (id)_stringForSelector:(SEL)a3 from:(id)a4
{
  v6 = a4;
  v7 = [(_INVocabularyGenerationDocument *)self _valueForSelector:a3 ofClass:objc_opt_class() from:v6];

  return v7;
}

- (id)_valueForSelector:(SEL)a3 ofClass:(Class)a4 from:(id)a5
{
  v6 = a5;
  v7 = NSStringFromSelector(a3);
  v8 = [v6 objectForKeyedSubscript:v7];

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  return v8;
}

- (void)_addValueForSelector:(SEL)a3 toDictionary:(id)a4
{
  v8 = a4;
  v6 = [(_INVocabularyGenerationDocument *)self performSelector:a3];
  if (v6)
  {
    v7 = NSStringFromSelector(a3);
    [v8 setValue:v6 forKey:v7];
  }
}

- (void)setVocabularyItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_INVocabularyGenerationDocument *)self _clearVocabularyItemCaches];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
  vocabularyItems = self->_vocabularyItems;
  self->_vocabularyItems = v5;

  self->_haveAssignedAllSiriIDs = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_vocabularyItems;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) _siriID];

        if (!v12)
        {
          self->_haveAssignedAllSiriIDs = 0;
          goto LABEL_11;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_clearVocabularyItemCaches
{
  itemsBySiriIDCache = self->_itemsBySiriIDCache;
  self->_itemsBySiriIDCache = 0;

  itemsByStringCache = self->_itemsByStringCache;
  self->_itemsByStringCache = 0;
}

- (id)diffFromPreviousDocument:(id)a3
{
  *(&v59[2] + 6) = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 appBundleID];
    v7 = [(_INVocabularyGenerationDocument *)self appBundleID];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 intentSlot];
      v10 = [(_INVocabularyGenerationDocument *)self intentSlot];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        goto LABEL_4;
      }

      v44 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v38 = 0;
        goto LABEL_32;
      }

      v40 = v44;
      v41 = [v5 intentSlot];
      v42 = [(_INVocabularyGenerationDocument *)self intentSlot];
      *buf = 136315906;
      v54 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v55 = 2082;
      v56 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v57 = 2114;
      *v58 = v41;
      *&v58[8] = 2114;
      v59[0] = v42;
      v43 = "%s %{public}s previous document's slot %{public}@ != ours %{public}@";
    }

    else
    {
      v39 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v40 = v39;
      v41 = [v5 appBundleID];
      v42 = [(_INVocabularyGenerationDocument *)self appBundleID];
      *buf = 136315906;
      v54 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v55 = 2082;
      v56 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v57 = 2114;
      *v58 = v41;
      *&v58[8] = 2114;
      v59[0] = v42;
      v43 = "%s %{public}s previous document's appBundleID %{public}@ != ours %{public}@";
    }

    _os_log_error_impl(&dword_18E991000, v40, OS_LOG_TYPE_ERROR, v43, buf, 0x2Au);

    goto LABEL_31;
  }

LABEL_4:
  v12 = objc_alloc_init(_INVocabularyGenerationDiff);
  v13 = [(_INVocabularyGenerationDocument *)self appBundleID];
  [(_INVocabularyGenerationDiff *)v12 setAppBundleID:v13];

  v14 = [(_INVocabularyGenerationDocument *)self intentSlot];
  [(_INVocabularyGenerationDiff *)v12 setIntentSlotName:v14];

  v15 = [v5 vocabularyItems];
  v16 = [v15 count];

  if (v16 && ([v5 haveAssignedAllSiriIDs] & 1) == 0)
  {
    v17 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v54 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v55 = 2080;
      v56 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v57 = 2112;
      *v58 = v5;
      _os_log_impl(&dword_18E991000, v17, OS_LOG_TYPE_INFO, "%s %s previous document %@ has items that are missing identifiers, so it can not be trusted as a source for remote truth.", buf, 0x20u);
    }

    v5 = 0;
  }

  if (([v5 resetOnNextSync] & 1) != 0 || -[_INVocabularyGenerationDocument resetOnNextSync](self, "resetOnNextSync"))
  {
    v18 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v20 = [v5 resetOnNextSync];
      v21 = [(_INVocabularyGenerationDocument *)self resetOnNextSync];
      *buf = 136316162;
      v54 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v55 = 2080;
      v56 = "[_INVocabularyGenerationDocument diffFromPreviousDocument:]";
      v57 = 1024;
      *v58 = v20;
      *&v58[4] = 1024;
      *&v58[6] = v21;
      LOWORD(v59[0]) = 2112;
      *(v59 + 2) = v5;
      _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s %s Reset requested by old=%d current=%d, computing diff as-if from nil. Discarded old %@", buf, 0x2Cu);
    }

    goto LABEL_14;
  }

  if (!v5)
  {
LABEL_14:
    [(_INVocabularyGenerationDiff *)v12 setIsFullReset:1];
    v5 = 0;
  }

  v22 = [v5 vocabularyItems];
  v23 = [v22 count];

  if (!v23)
  {
    v24 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
    v25 = [v24 count];

    if (v25)
    {
      [(_INVocabularyGenerationDiff *)v12 setIsFullReset:1];
    }
  }

  v47 = v12;
  [v5 assignMissingSiriIDsForOptimalDiffFromPreviousDocument:0];
  [(_INVocabularyGenerationDocument *)self assignMissingSiriIDsForOptimalDiffFromPreviousDocument:v5];
  v26 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
  v27 = [v5 _everyVocabularyItemSiriID];
  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v26, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = v26;
  v30 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v49;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v48 + 1) + 8 * i);
        v35 = [v34 _siriID];
        [v27 removeObject:v35];

        v36 = [v34 _siriID];
        v37 = [v5 _vocabularyItemForSiriID:v36];

        if (([v37 _isSimilarEnoughToNotSync:v34] & 1) == 0)
        {
          [v28 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v31);
  }

  v38 = v47;
  -[_INVocabularyGenerationDiff setCountOfVocabularyItemsAfterApplying:](v47, "setCountOfVocabularyItemsAfterApplying:", [v29 count]);
  [(_INVocabularyGenerationDiff *)v47 setUpdatedVocabularyItems:v28];
  [(_INVocabularyGenerationDiff *)v47 setDeletedSiriIDs:v27];

LABEL_32:
  v45 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)assignMissingSiriIDsForOptimalDiffFromPreviousDocument:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_haveAssignedAllSiriIDs)
  {
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[_INVocabularyGenerationDocument assignMissingSiriIDsForOptimalDiffFromPreviousDocument:]";
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v29 = self;
    v6 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [v14 _siriID];
          if (v15)
          {
            v16 = v8;
            v17 = v15;
          }

          else
          {
            v16 = v7;
            v17 = v14;
          }

          [v16 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    v28 = v9;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          v24 = [v23 string];
          v25 = [v4 _vocabularyItemWithString:v24];

          if (!v25)
          {
            goto LABEL_23;
          }

          v26 = [v25 _siriID];
          if (!v26 || [v8 containsObject:v26])
          {

LABEL_23:
            v26 = [MEMORY[0x1E696AFB0] UUID];
          }

          [v23 _setSiriID:v26];
          [v8 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    v29->_haveAssignedAllSiriIDs = 1;
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_vocabularyItemWithString:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    itemsByStringCache = self->_itemsByStringCache;
    if (!itemsByStringCache)
    {
      v22 = v4;
      v6 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
      v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v8 = self->_itemsByStringCache;
      self->_itemsByStringCache = v7;

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [v14 string];
            if ([v15 length])
            {
              [(NSMutableDictionary *)self->_itemsByStringCache setObject:v14 forKeyedSubscript:v15];
            }

            else
            {
              v16 = INSiriLogContextIntents;
              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
              {
                v17 = v16;
                v18 = [v14 _siriID];
                *buf = 136315650;
                v28 = "[_INVocabularyGenerationDocument _vocabularyItemWithString:]";
                v29 = 2112;
                v30 = v14;
                v31 = 2112;
                v32 = v18;
                _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s found _INVocabularyItem with empty string %@ %@", buf, 0x20u);
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v11);
      }

      itemsByStringCache = self->_itemsByStringCache;
      v4 = v22;
    }

    v19 = [(NSMutableDictionary *)itemsByStringCache objectForKeyedSubscript:v4];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_vocabularyItemForSiriID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_INVocabularyGenerationDocument *)self _itemsBySiriID];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_everyVocabularyItemSiriID
{
  v2 = [(_INVocabularyGenerationDocument *)self _itemsBySiriID];
  v3 = [v2 allKeys];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_itemsBySiriID
{
  v22 = *MEMORY[0x1E69E9840];
  itemsBySiriIDCache = self->_itemsBySiriIDCache;
  if (itemsBySiriIDCache)
  {
    v3 = itemsBySiriIDCache;
  }

  else
  {
    [(_INVocabularyGenerationDocument *)self assignMissingSiriIDsForOptimalDiffFromPreviousDocument:0];
    v5 = [(_INVocabularyGenerationDocument *)self vocabularyItems];
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = self->_itemsBySiriIDCache;
    self->_itemsBySiriIDCache = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
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
          v14 = [v13 _siriID];
          if (v14)
          {
            [(NSMutableDictionary *)self->_itemsBySiriIDCache setObject:v13 forKeyedSubscript:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v3 = self->_itemsBySiriIDCache;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

@end