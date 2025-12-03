@interface _NSQueryGenerationToken
+ (uint64_t)identifierIsForNonGenerationalStore:(uint64_t)store;
- (BOOL)_moor:(uint64_t)_moor error:;
- (BOOL)isEqual:(id)equal;
- (_NSQueryGenerationToken)autorelease;
- (_NSQueryGenerationToken)initWithCoder:(id)coder;
- (_NSQueryGenerationToken)retain;
- (_WORD)_generationalComponentForStore:(uint64_t)store;
- (_WORD)_storesForRequestRoutingFrom:(uint64_t *)from error:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)persistentStoreCoordinator;
- (uint64_t)_expectedStores;
- (void)_initWithValue:(int)value singleton:;
- (void)_makeConcrete:(uint64_t)concrete;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initForNonGenerationalStore:(void *)result;
- (void)initWithValue:(void *)value store:(int)store freeValueOnDealloc:;
- (void)release;
@end

@implementation _NSQueryGenerationToken

- (_NSQueryGenerationToken)retain
{
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSQueryGenerationToken;
    return [(_NSQueryGenerationToken *)&v2 retain];
  }

  return self;
}

- (_NSQueryGenerationToken)autorelease
{
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSQueryGenerationToken;
    return [(_NSQueryGenerationToken *)&v2 autorelease];
  }

  return self;
}

- (void)release
{
  if ((*&self->_flags & 2) == 0)
  {
    v2.receiver = self;
    v2.super_class = _NSQueryGenerationToken;
    [(_NSQueryGenerationToken *)&v2 release];
  }
}

- (id)persistentStoreCoordinator
{
  v18 = *MEMORY[0x1E69E9840];
  flags = self->_flags;
  if ((flags & 0xA) != 0)
  {
    result = 0;
LABEL_3:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (flags)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    generationIdentifier = self->_generationIdentifier;
    result = [generationIdentifier countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v10 = result;
      v11 = *v14;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(generationIdentifier);
        }

        result = [*(*(&v13 + 1) + 8 * v12) persistentStoreCoordinator];
        if (result)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [generationIdentifier countByEnumeratingWithState:&v13 objects:v17 count:16];
          result = 0;
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_3;
        }
      }
    }

    goto LABEL_3;
  }

  store = self->_store;
  if (store)
  {
    WeakRetained = objc_loadWeakRetained(&store->_object);
  }

  else
  {
    WeakRetained = 0;
  }

  _persistentStoreCoordinator = [WeakRetained _persistentStoreCoordinator];

  v8 = *MEMORY[0x1E69E9840];
  return _persistentStoreCoordinator;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 0xF) == 4)
  {
    store = self->_store;
    if (store)
    {
      WeakRetained = objc_loadWeakRetained(&store->_object);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained freeQueryGenerationWithIdentifier:self->_generationIdentifier];
  }

  self->_storeIdentifier = 0;
  self->_generationIdentifier = 0;

  self->_store = 0;
  v6.receiver = self;
  v6.super_class = _NSQueryGenerationToken;
  [(_NSQueryGenerationToken *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_initWithValue:(int)value singleton:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = _NSQueryGenerationToken;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (v5)
  {
    if ([a2 isNSData])
    {
      v6 = [[_PFSQLiteSnapshotWrapper alloc] initWithData:a2];
    }

    else
    {
      v6 = a2;
    }

    v5[3] = v6;
    if (value)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 16) = v5[4] & 0xFFFD | v7;
    *(v5 + 16) &= ~4u;
    *(v5 + 16) &= ~8u;
  }

  return v5;
}

- (void)initWithValue:(void *)value store:(int)store freeValueOnDealloc:
{
  if (!self)
  {
    return 0;
  }

  v6 = [(_NSQueryGenerationToken *)self _initWithValue:a2 singleton:0];
  if (v6)
  {
    if (value)
    {
      v6[1] = [value identifier];
      v6[2] = [[_PFWeakReference alloc] initWithObject:value];
    }

    *(v6 + 16) &= ~1u;
    if (store)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 16) = v6[4] & 0xFFFB | v7;
  }

  return v6;
}

+ (uint64_t)identifierIsForNonGenerationalStore:(uint64_t)store
{
  objc_opt_self();

  return [@"unsupported" isEqual:a2];
}

- (void)initForNonGenerationalStore:(void *)result
{
  if (result)
  {
    return [(_NSQueryGenerationToken *)result initWithValue:a2 store:0 freeValueOnDealloc:?];
  }

  return result;
}

- (_NSQueryGenerationToken)initWithCoder:(id)coder
{
  if ([coder decodeBoolForKey:@"NSQueryTokenIsSingleton"])
  {
    v5 = [coder decodeIntForKey:@"NSQueryTokenWhichSingleton"];
    if (v5 == 2)
    {
      v6 = +[NSQueryGenerationToken currentQueryGenerationToken];
    }

    else if (v5 == 1)
    {
      v6 = +[NSQueryGenerationToken nostoresQueryGenerationToken];
    }

    else
    {
      v6 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
    }

    v8 = v6;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _NSQueryGenerationToken;
    v7 = [(_NSQueryGenerationToken *)&v20 init];
    v8 = v7;
    if (v7)
    {
      *&v7->_flags &= ~2u;
      v9 = [coder decodeBoolForKey:@"NSQueryTokenIsCompound"];
      *&v8->_flags = *&v8->_flags & 0xFFFE | v9;
      if (v9)
      {
        v10 = MEMORY[0x1E695DFD8];
        v11 = objc_opt_class();
        v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0, v19}];
      }

      else
      {
        v8->_storeIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSQueryTokenStoreIdentifier"];
        v13 = MEMORY[0x1E695DFD8];
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        v12 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      }

      v16 = [coder decodeObjectOfClasses:v12 forKey:@"NSQueryTokenGenerationIdentifier"];
      if ([v16 isNSData])
      {
        v17 = [[_PFSQLiteSnapshotWrapper alloc] initWithData:v16];
      }

      else
      {
        v17 = v16;
      }

      v8->_generationIdentifier = v17;
      *&v8->_flags |= 8u;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:(*&self->_flags >> 1) & 1 forKey:@"NSQueryTokenIsSingleton"];
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    if (+[NSQueryGenerationToken nostoresQueryGenerationToken]== self)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (+[NSQueryGenerationToken currentQueryGenerationToken]== self);
    }

    [coder encodeInt:v7 forKey:@"NSQueryTokenWhichSingleton"];
  }

  else
  {
    [coder encodeBool:flags & 1 forKey:@"NSQueryTokenIsCompound"];
    if ((*&self->_flags & 1) == 0)
    {
      [coder encodeObject:self->_storeIdentifier forKey:@"NSQueryTokenStoreIdentifier"];
    }

    generationIdentifier = self->_generationIdentifier;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      generationIdentifier = [(_PFSQLiteSnapshotWrapper *)generationIdentifier data];
    }

    [coder encodeObject:generationIdentifier forKey:@"NSQueryTokenGenerationIdentifier"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    v6 = *MEMORY[0x1E69E9840];

    return self;
  }

  else
  {
    v3 = objc_alloc_init(objc_opt_class());
    v4 = *(v3 + 16);
    *(v3 + 16) = v4 & 0xFFFD;
    *(v3 + 16) = v4 & 0xFFFC | *&self->_flags & 1;
    if (*&self->_flags)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      generationIdentifier = self->_generationIdentifier;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [generationIdentifier countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(generationIdentifier);
            }

            v14 = [*(*(&v17 + 1) + 8 * v13) copy];
            [v8 addObject:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [generationIdentifier countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      *(v3 + 3) = v8;
      v5 = *(v3 + 16);
    }

    else
    {

      *(v3 + 1) = self->_storeIdentifier;
      *(v3 + 3) = self->_generationIdentifier;
      v5 = *(v3 + 16) & 0xFFFB;
    }

    *(v3 + 16) = v5 | 8;
    v15 = *MEMORY[0x1E69E9840];
    return v3;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      if ((*&self->_flags & 1) == (*(equal + 16) & 1))
      {
        if ((*&self->_flags & 1) != 0 || (v5 = [(NSString *)self->_storeIdentifier isEqual:*(equal + 1)]) != 0)
        {
          generationIdentifier = self->_generationIdentifier;
          v7 = *(equal + 3);

          LOBYTE(v5) = [generationIdentifier isEqual:v7];
        }
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (*&self->_flags)
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:@"<NSQueryGenerationToken : {"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    generationIdentifier = self->_generationIdentifier;
    v8 = [generationIdentifier countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = @"%p";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(generationIdentifier);
          }

          [v6 appendFormat:v11, *(*(&v16 + 1) + 8 * i)];
          v11 = @", %p";
        }

        v9 = [generationIdentifier countByEnumeratingWithState:&v16 objects:v20 count:16];
        v11 = @", %p";
      }

      while (v9);
    }

    [v6 appendString:@"}>"];
    v5 = v6;
  }

  else
  {
    storeIdentifier = self->_storeIdentifier;
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSQueryGenerationToken : %@/%@>", storeIdentifier, self->_generationIdentifier];
  }

  v13 = v5;
  objc_autoreleasePoolPop(v3);
  result = v13;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (_WORD)_generationalComponentForStore:(uint64_t)store
{
  storeCopy = store;
  v20 = *MEMORY[0x1E69E9840];
  if (store)
  {
    v4 = *(store + 32);
    if (v4)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = *(store + 24);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(_NSQueryGenerationToken *)*(*(&v15 + 1) + 8 * i) _generationalComponentForStore:a2];
            if (v12)
            {
              storeCopy = v12;
              if ((v12[16] & 2) == 0)
              {
                storeCopy = v12;
              }

              goto LABEL_21;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          storeCopy = 0;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        storeCopy = 0;
      }
    }

    else if ((v4 & 2) == 0)
    {
      v5 = *(store + 16);
      if (v5)
      {
        WeakRetained = objc_loadWeakRetained((v5 + 8));
      }

      else
      {
        WeakRetained = 0;
      }

      if (WeakRetained != a2)
      {
        storeCopy = 0;
      }
    }
  }

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return storeCopy;
}

- (uint64_t)_expectedStores
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    array = 0;
    goto LABEL_17;
  }

  v2 = *(self + 32);
  if ((v2 & 2) == 0)
  {
    v3 = MEMORY[0x1E695DF70];
    if ((v2 & 1) == 0)
    {
      v4 = *(self + 8);
      v5 = *MEMORY[0x1E69E9840];

      return [v3 arrayWithObject:v4];
    }

    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(self + 24);
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [array addObjectsFromArray:-[_NSQueryGenerationToken _expectedStores](*(*(&v16 + 1) + 8 * i))];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

LABEL_17:
    v15 = *MEMORY[0x1E69E9840];
    return array;
  }

  v7 = MEMORY[0x1E695DF70];
  v8 = *MEMORY[0x1E69E9840];

  return [v7 array];
}

- (void)_makeConcrete:(uint64_t)concrete
{
  v17 = *MEMORY[0x1E69E9840];
  if (concrete)
  {
    v3 = *(concrete + 32);
    if ((v3 & 2) == 0)
    {
      if ((v3 & 1) == 0)
      {
        if (!a2)
        {

          *(concrete + 16) = 0;
          goto LABEL_17;
        }

        v5 = v3 & 0xFFF4;
        goto LABEL_15;
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = *(concrete + 24);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(_NSQueryGenerationToken *)*(*(&v12 + 1) + 8 * i) _makeConcrete:a2];
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      if (a2)
      {
        v5 = *(concrete + 32) & 0xFFF7;
LABEL_15:
        *(concrete + 32) = v5;
      }
    }
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_moor:(uint64_t)_moor error:
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v12 = 0;
    goto LABEL_31;
  }

  v4 = *(self + 32);
  if ((v4 & 2) == 0)
  {
    if (v4)
    {
      v29 = 0uLL;
      v30 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v13 = *(self + 24);
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v16 += [(_NSQueryGenerationToken *)*(*(&v27 + 1) + 8 * i) _moor:a2 error:_moor];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v12 = [*(self + 24) count] == v16;
      goto LABEL_30;
    }

    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v7 = [a2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v7)
    {
LABEL_27:
      v12 = 0;
      goto LABEL_30;
    }

    v8 = v7;
    v9 = *v24;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(a2);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      if ([*(self + 8) isEqual:{objc_msgSend(v11, "identifier")}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [a2 countByEnumeratingWithState:&v23 objects:v31 count:16];
        v12 = 0;
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_30;
      }
    }

    v19 = [v11 reopenQueryGenerationWithIdentifier:*(self + 24) error:_moor];
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = v19;
    *(self + 16) = [[_PFWeakReference alloc] initWithObject:v11];
    if (([*(v20 + 24) isEqual:*(self + 24)] & 1) == 0)
    {

      *(self + 24) = *(v20 + 24);
    }

    if ((*(v20 + 32) & 4) != 0)
    {
      *(self + 32) |= 4u;
      *(v20 + 32) &= ~4u;
    }
  }

  v12 = 1;
LABEL_30:
  [(_NSQueryGenerationToken *)self _makeConcrete:v12];
LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

- (_WORD)_storesForRequestRoutingFrom:(uint64_t *)from error:
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    if ((result[16] & 8) == 0)
    {
      goto LABEL_9;
    }

    v22 = 0;
    v6 = [(_NSQueryGenerationToken *)result _moor:a2 error:&v22];
    v7 = v6;
    if (from && !v6)
    {
      v8 = v22;
      if (!v22)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = *MEMORY[0x1E696A250];
        v24[0] = @"reason";
        v24[1] = @"expected stores";
        v25[0] = @"Can't reattach all stores specified by token";
        v25[1] = [(_NSQueryGenerationToken *)v4 _expectedStores];
        v8 = [v9 errorWithDomain:v10 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v25, v24, 2)}];
      }

      *from = v8;
    }

    if (!v7)
    {
      result = 0;
    }

    else
    {
LABEL_9:
      v11 = [a2 mutableCopy];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(a2);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if (![(_NSQueryGenerationToken *)v4 _generationalComponentForStore:v16])
            {
              [v11 removeObject:v16];
            }
          }

          v13 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v13);
      }

      result = v11;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end