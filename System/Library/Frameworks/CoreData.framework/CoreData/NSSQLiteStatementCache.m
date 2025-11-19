@interface NSSQLiteStatementCache
- (CFMutableDictionaryRef)createCorrelationCacheDictionary;
- (NSSQLiteStatementCache)initWithEntity:(id)a3;
- (void)_clearSaveGeneratedCachedStatements;
- (void)cacheBatchInsertStatement:(void *)result;
- (void)cacheCorrelationDeleteStatement:(void *)key forRelationship:;
- (void)cacheCorrelationInsertStatement:(void *)key forRelationship:;
- (void)cacheCorrelationMasterReorderStatement:(void *)key forRelationship:;
- (void)cacheCorrelationReorderStatement:(void *)key forRelationship:;
- (void)cacheDeletionStatement:(void *)result;
- (void)cacheFaultingStatement:(uint64_t)a3 andFetchRequest:(void *)a4 forRelationship:;
- (void)cacheFaultingStatement:(void *)result;
- (void)cacheInsertStatement:(void *)result;
- (void)clearCachedStatements;
- (void)dealloc;
- (void)insertOrReplaceStatement:(void *)key forRelationship:(CFDictionaryRef)theDict inDictionary:;
@end

@implementation NSSQLiteStatementCache

- (void)_clearSaveGeneratedCachedStatements
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 16))
    {
      [(NSSQLiteStatementCache *)a1 cacheInsertStatement:?];
    }

    if (*(a1 + 24))
    {
      [(NSSQLiteStatementCache *)a1 cacheBatchInsertStatement:?];
    }

    if (*(a1 + 32))
    {
      [(NSSQLiteStatementCache *)a1 cacheDeletionStatement:?];
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v3 = [v2 allValues];
      v4 = [v3 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v50;
        do
        {
          v7 = 0;
          do
          {
            if (*v50 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [(NSSQLiteStatement *)*(*(&v49 + 1) + 8 * v7++) clearCaches:?];
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v5);
      }

      CFDictionaryRemoveAllValues(*(a1 + 56));
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v9 = [v8 allValues];
      v10 = [v9 countByEnumeratingWithState:&v45 objects:v56 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v46;
        do
        {
          v13 = 0;
          do
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(NSSQLiteStatement *)*(*(&v45 + 1) + 8 * v13++) clearCaches:?];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v45 objects:v56 count:16];
        }

        while (v11);
      }

      CFDictionaryRemoveAllValues(*(a1 + 72));
    }

    v14 = *(a1 + 80);
    if (v14)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = [v14 allValues];
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v42;
        do
        {
          v19 = 0;
          do
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(NSSQLiteStatement *)*(*(&v41 + 1) + 8 * v19++) clearCaches:?];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v41 objects:v55 count:16];
        }

        while (v17);
      }

      CFDictionaryRemoveAllValues(*(a1 + 80));
    }

    v20 = *(a1 + 88);
    if (v20)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = [v20 allValues];
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v54 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          v25 = 0;
          do
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [(NSSQLiteStatement *)*(*(&v37 + 1) + 8 * v25++) clearCaches:?];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v37 objects:v54 count:16];
        }

        while (v23);
      }

      CFDictionaryRemoveAllValues(*(a1 + 88));
    }

    v26 = *(a1 + 64);
    if (v26)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v27 = [v26 allValues];
      v28 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v34;
        do
        {
          v31 = 0;
          do
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [(NSSQLiteStatement *)*(*(&v33 + 1) + 8 * v31++) clearCaches:?];
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v33 objects:v53 count:16];
        }

        while (v29);
      }

      CFDictionaryRemoveAllValues(*(a1 + 64));
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSSQLiteStatementCache *)self clearCachedStatements];

  correlationInsertCache = self->_correlationInsertCache;
  if (correlationInsertCache)
  {
    CFRelease(correlationInsertCache);
  }

  correlationMasterReorderCache = self->_correlationMasterReorderCache;
  if (correlationMasterReorderCache)
  {
    CFRelease(correlationMasterReorderCache);
  }

  correlationMasterReorderCachePart2 = self->_correlationMasterReorderCachePart2;
  if (correlationMasterReorderCachePart2)
  {
    CFRelease(correlationMasterReorderCachePart2);
  }

  correlationReorderCache = self->_correlationReorderCache;
  if (correlationReorderCache)
  {
    CFRelease(correlationReorderCache);
  }

  correlationDeleteCache = self->_correlationDeleteCache;
  if (correlationDeleteCache)
  {
    CFRelease(correlationDeleteCache);
  }

  v8.receiver = self;
  v8.super_class = NSSQLiteStatementCache;
  [(NSSQLiteStatementCache *)&v8 dealloc];
}

- (void)clearCachedStatements
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [(NSSQLiteStatementCache *)a1 _clearSaveGeneratedCachedStatements];
    if (*(a1 + 40))
    {
      [(NSSQLiteStatementCache *)a1 cacheFaultingStatement:?];
    }

    v2 = *(a1 + 48);
    if (v2)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v11;
        do
        {
          v6 = 0;
          do
          {
            if (*v11 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [*(a1 + 48) objectForKey:*(*(&v10 + 1) + 8 * v6)];
            v8 = [v7 count];
            if (v8)
            {
              v8 = [v7 objectAtIndex:0];
            }

            [(NSSQLiteStatement *)v8 clearCaches:?];
            ++v6;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v4);
      }

      [*(a1 + 48) removeAllObjects];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (NSSQLiteStatementCache)initWithEntity:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSSQLiteStatementCache;
  v4 = [(NSSQLiteStatementCache *)&v6 init];
  if (v4)
  {
    v4->_entity = a3;
  }

  return v4;
}

- (void)cacheInsertStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[2];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[2] = result;
    }
  }

  return result;
}

- (void)cacheBatchInsertStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[3];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[3] = result;
    }
  }

  return result;
}

- (void)cacheDeletionStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[4];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[4] = result;
    }
  }

  return result;
}

- (void)cacheFaultingStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[5];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[5] = result;
    }
  }

  return result;
}

- (CFMutableDictionaryRef)createCorrelationCacheDictionary
{
  if (result)
  {
    keyCallBacks.version = *MEMORY[0x1E695E9D8];
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
    v1 = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.equal = 0;
    keyCallBacks.hash = 0;
    keyCallBacks.copyDescription = v1;
    valueCallBacks.version = *MEMORY[0x1E695E9E8];
    *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
    valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    valueCallBacks.equal = 0;
    return CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  }

  return result;
}

- (void)insertOrReplaceStatement:(void *)key forRelationship:(CFDictionaryRef)theDict inDictionary:
{
  if (a1)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      [(NSSQLiteStatement *)Value clearCaches:?];
    }

    CFDictionarySetValue(theDict, key, a2);
  }
}

- (void)cacheCorrelationInsertStatement:(void *)key forRelationship:
{
  if (a1)
  {
    v6 = *(a1 + 7);
    if (!v6)
    {
      v6 = [(NSSQLiteStatementCache *)a1 createCorrelationCacheDictionary];
      *(a1 + 7) = v6;
    }

    [(NSSQLiteStatementCache *)a1 insertOrReplaceStatement:a2 forRelationship:key inDictionary:v6];
  }
}

- (void)cacheCorrelationMasterReorderStatement:(void *)key forRelationship:
{
  if (a1)
  {
    v6 = *(a1 + 9);
    if (!v6)
    {
      v6 = [(NSSQLiteStatementCache *)a1 createCorrelationCacheDictionary];
      *(a1 + 9) = v6;
    }

    [(NSSQLiteStatementCache *)a1 insertOrReplaceStatement:a2 forRelationship:key inDictionary:v6];
  }
}

- (void)cacheCorrelationReorderStatement:(void *)key forRelationship:
{
  if (a1)
  {
    v6 = *(a1 + 11);
    if (!v6)
    {
      v6 = [(NSSQLiteStatementCache *)a1 createCorrelationCacheDictionary];
      *(a1 + 11) = v6;
    }

    [(NSSQLiteStatementCache *)a1 insertOrReplaceStatement:a2 forRelationship:key inDictionary:v6];
  }
}

- (void)cacheCorrelationDeleteStatement:(void *)key forRelationship:
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = [(NSSQLiteStatementCache *)a1 createCorrelationCacheDictionary];
      *(a1 + 8) = v6;
    }

    [(NSSQLiteStatementCache *)a1 insertOrReplaceStatement:a2 forRelationship:key inDictionary:v6];
  }
}

- (void)cacheFaultingStatement:(uint64_t)a3 andFetchRequest:(void *)a4 forRelationship:
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  v7 = [a4 name];
  v8 = [*(a1 + 48) objectForKey:v7];
  v9 = [v8 count] < 2 ? 0 : objc_msgSend(v8, "objectAtIndex:", 0);
  if (v9 == a2)
  {
    goto LABEL_10;
  }

  [(NSSQLiteStatement *)v9 clearCaches:?];
  v10 = *(a1 + 48);
  if (a2)
  {
    if (!v10)
    {
      *(a1 + 48) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14[0] = a2;
    v14[1] = a3;
    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v14 count:2];
    [*(a1 + 48) setObject:v11 forKey:v7];

LABEL_10:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = *MEMORY[0x1E69E9840];

  [v10 removeObjectForKey:v7];
}

@end