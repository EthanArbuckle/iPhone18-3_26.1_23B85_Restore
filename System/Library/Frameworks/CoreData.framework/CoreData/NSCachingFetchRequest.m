@interface NSCachingFetchRequest
- (NSCachingFetchRequest)init;
- (NSCachingFetchRequest)initWithCoder:(id)a3;
- (NSDictionary)substitutionVariables;
- (id)_cachedInfoForRequestor:(id)a3;
- (id)_copyForDirtyContext;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_cacheInfo:(id)a3 forRequestor:(id)a4;
- (void)_disableSQLStatementCaching;
- (void)dealloc;
- (void)setSubstitutionVariables:(id)a3;
@end

@implementation NSCachingFetchRequest

- (NSCachingFetchRequest)init
{
  v5.receiver = self;
  v5.super_class = NSCachingFetchRequest;
  v2 = [(NSFetchRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_cachedInfo = CFDictionaryCreateMutable(0, 5, 0, MEMORY[0x1E695E9E8]);
    v3->_identifier = [objc_opt_class() _generateIdentifier];
    v3->_substitutionVariables = 0;
  }

  return v3;
}

- (void)_disableSQLStatementCaching
{
  os_unfair_lock_lock_with_options();
  cachedInfo = self->_cachedInfo;
  if (cachedInfo)
  {
    CFRelease(cachedInfo);
  }

  self->_cachedInfo = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  cachedInfo = self->_cachedInfo;
  if (cachedInfo)
  {
    CFRelease(cachedInfo);
  }

  self->_cachedInfo = 0;

  self->_identifier = 0;
  self->_substitutionVariables = 0;
  v4.receiver = self;
  v4.super_class = NSCachingFetchRequest;
  [(NSFetchRequest *)&v4 dealloc];
}

- (NSDictionary)substitutionVariables
{
  substitutionVariables = self->_substitutionVariables;
  if (substitutionVariables)
  {
    v4 = [(NSDictionary *)substitutionVariables copy];

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DF20];

    return [v6 dictionary];
  }
}

- (NSCachingFetchRequest)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = NSCachingFetchRequest;
  v4 = [(NSFetchRequest *)&v12 initWithCoder:?];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __39__NSCachingFetchRequest_initWithCoder___block_invoke;
    v10 = &unk_1E6EC16F0;
    v11 = v5;
    if (!v5 || (v6 = __39__NSCachingFetchRequest_initWithCoder___block_invoke, !v5[1]) && !v5[2])
    {
      [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435A30)}];

      v4 = 0;
      v6 = v9;
    }

    v6(v8);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NSCachingFetchRequest;
  v4 = [(NSFetchRequest *)&v10 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_substitutionVariables mutableCopy];

  *(v4 + 14) = v5;
  os_unfair_lock_lock_with_options();
  v6 = *(v4 + 15);
  cachedInfo = self->_cachedInfo;
  if (cachedInfo)
  {
    Count = CFDictionaryGetCount(cachedInfo);
    *(v4 + 15) = CFDictionaryCreateMutableCopy(0, Count, self->_cachedInfo);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else if (v6)
  {
    CFRelease(*(v4 + 15));
    *(v4 + 15) = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)_copyForDirtyContext
{
  v3 = [(NSCachingFetchRequest *)self copy];

  v3[16] = self->_identifier;
  v4 = [(NSDictionary *)self->_substitutionVariables mutableCopy];
  if (![v4 objectForKey:@"FETCH_REQUEST_LIMIT_SUBSTITUTION"])
  {
    v5 = [(NSFetchRequest *)self fetchLimit];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696ABC8] forKey:{"expressionForConstantValue:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v5)), @"FETCH_REQUEST_LIMIT_SUBSTITUTION"}];
  }

  v3[14] = v4;
  [v3 _incrementInUseCounter];
  return v3;
}

- (void)_cacheInfo:(id)a3 forRequestor:(id)a4
{
  if (self->_cachedInfo)
  {
    os_unfair_lock_lock_with_options();
    CFDictionarySetValue(self->_cachedInfo, a4, a3);
    os_unfair_lock_unlock(&self->_lock);

    [(NSFetchRequest *)self _incrementInUseCounter];
  }
}

- (id)_cachedInfoForRequestor:(id)a3
{
  if (self->_cachedInfo)
  {
    os_unfair_lock_lock_with_options();
    v5 = CFDictionaryGetValue(self->_cachedInfo, a3);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSubstitutionVariables:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  substitutionVariables = self->_substitutionVariables;
  if (substitutionVariables == a3)
  {
    goto LABEL_36;
  }

  if (!substitutionVariables)
  {
    v7 = 0;
    goto LABEL_27;
  }

  v6 = [(NSFetchRequest *)self _isEditable];
  v7 = self->_substitutionVariables;
  if (v6)
  {
LABEL_27:
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v20 = [(NSDictionary *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (!v20)
    {
      goto LABEL_35;
    }

    v21 = v20;
    v22 = *v40;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v7);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        if ([objc_msgSend(a3 valueForKey:{v24), "expressionType"}])
        {
          v31 = MEMORY[0x1E695DF30];
          v32 = *MEMORY[0x1E695D940];
          v27 = MEMORY[0x1E696AEC0];
          v34 = v24;
LABEL_39:
          v33 = [v27 stringWithFormat:@"Unsupported substitution variable type for key %@", v34];
          goto LABEL_40;
        }
      }

      v21 = [(NSDictionary *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v21)
      {
        goto LABEL_35;
      }
    }
  }

  v8 = [(NSDictionary *)self->_substitutionVariables count];
  if (v8 != [a3 count])
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v28 = @"Mismatched variables dictionaries (count)";
LABEL_41:
    objc_exception_throw([v29 exceptionWithName:v30 reason:v28 userInfo:0]);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = self->_substitutionVariables;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * j);
        v15 = [(NSDictionary *)self->_substitutionVariables valueForKey:v14];
        v16 = [a3 valueForKey:v14];
        if (v16)
        {
          v17 = v16;
          if ([v15 expressionType])
          {
            v31 = MEMORY[0x1E695DF30];
            v32 = *MEMORY[0x1E695D940];
            v27 = MEMORY[0x1E696AEC0];
            v34 = v14;
            goto LABEL_39;
          }

          v18 = [v15 constantValue];
          v19 = [v17 constantValue];
          if ((([v18 isNSArray] & 1) != 0 || (objc_msgSend(v18, "isNSSet") & 1) != 0 || objc_msgSend(v18, "isNSOrderedSet")) && (objc_msgSend(v19, "isNSArray") & 1) == 0 && (objc_msgSend(v19, "isNSSet") & 1) == 0 && (objc_msgSend(v19, "isNSOrderedSet") & 1) == 0)
          {
            v31 = MEMORY[0x1E695DF30];
            v32 = *MEMORY[0x1E695D940];
            v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatch: that which was once a collection is no longer (%@)", v14];
LABEL_40:
            v28 = v33;
            v29 = v31;
            v30 = v32;
            goto LABEL_41;
          }
        }

        else if ((![v14 isEqual:@"FETCH_REQUEST_LIMIT_SUBSTITUTION"] || !-[NSFetchRequest fetchLimit](self, "fetchLimit")) && (!objc_msgSend(v14, "isEqual:", @"FETCH_REQUEST_OFFSET_SUBSTITUTION") || !-[NSFetchRequest fetchOffset](self, "fetchOffset")))
        {
          v29 = MEMORY[0x1E695DF30];
          v30 = *MEMORY[0x1E695D940];
          v28 = @"Mismatched variables dictionaries (missing value)";
          goto LABEL_41;
        }
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v11);
  }

LABEL_35:
  v25 = [a3 copy];

  self->_substitutionVariables = v25;
LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
}

@end