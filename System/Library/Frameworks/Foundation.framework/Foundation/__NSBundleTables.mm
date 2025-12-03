@interface __NSBundleTables
+ (id)bundleTables;
- (__NSBundleTables)init;
- (id)_addBundleLocked:(uint64_t)locked forPath:(uint64_t)path withType:(uint64_t)type forClass:(int)class isImmortal:;
- (id)addBundle:(uint64_t)bundle forPath:(uint64_t)path withType:(uint64_t)type forClass:(int)class isImmortal:;
- (id)addBundleIfNeeded:(uint64_t)needed forPath:(uint64_t)path withType:(int)type isImmortal:;
- (id)bundleForClass:(id *)result;
- (id)bundleForPath:(id *)result;
- (uint64_t)addStaticFrameworkBundles:(uint64_t)result;
- (uint64_t)allBundles;
- (uint64_t)allFrameworks;
- (uint64_t)loadedBundles;
- (uint64_t)removeBundle:(uint64_t)bundle forPath:(uint64_t)path type:;
- (void)dealloc;
@end

@implementation __NSBundleTables

+ (id)bundleTables
{
  objc_opt_self();
  if (qword_1ED43F9D8 != -1)
  {
    dispatch_once(&qword_1ED43F9D8, &__block_literal_global_37);
  }

  v0 = _MergedGlobals_112;

  return v0;
}

- (__NSBundleTables)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = __NSBundleTables;
  v2 = [(__NSBundleTables *)&v4 init];
  v2->_immortalBundles = [[NSPointerArray alloc] initWithOptions:258];
  v2->_lock = objc_opt_new();
  v2->_staticFrameworks = [[NSHashTable alloc] initWithOptions:5 capacity:0];
  v2->_loadedBundles = [[NSHashTable alloc] initWithOptions:5 capacity:0];
  v2->_loadedFrameworks = [[NSHashTable alloc] initWithOptions:5 capacity:0];
  v2->_resolvedPathToBundles = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:0];
  v2->_bundleForClassMap = [[NSMapTable alloc] initWithKeyOptions:256 valueOptions:5 capacity:0];
  return v2;
}

- (uint64_t)allBundles
{
  if (result)
  {
    v1 = result;
    v2 = [NSHashTable hashTableWithOptions:0];
    v3 = +[NSBundle mainBundle];
    if (v3)
    {
      [(NSHashTable *)v2 addObject:v3];
    }

    [*(v1 + 8) lock];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 24)];
    [*(v1 + 8) unlock];

    return [(NSHashTable *)v2 allObjects];
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSBundleTables;
  [(__NSBundleTables *)&v3 dealloc];
}

- (uint64_t)removeBundle:(uint64_t)bundle forPath:(uint64_t)path type:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  [*(result + 8) lock];
  if (bundle && [*(v7 + 40) objectForKey:bundle])
  {
    [*(v7 + 40) removeObjectForKey:bundle];
  }

  switch(path)
  {
    case 0x10000:
      goto LABEL_8;
    case 0x40000:
      v8 = (v7 + 32);
      if (![*(v7 + 32) containsObject:a2])
      {
        break;
      }

      goto LABEL_9;
    case 0x20000:
LABEL_8:
      v8 = (v7 + 24);
      if ([*(v7 + 24) containsObject:a2])
      {
LABEL_9:
        [*v8 removeObject:a2];
      }

      break;
  }

  v9 = *(v7 + 8);

  return [v9 unlock];
}

- (id)bundleForPath:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[1] lock];
    v4 = [v3[5] objectForKey:a2];
    [v3[1] unlock];
    return v4;
  }

  return result;
}

- (id)addBundleIfNeeded:(uint64_t)needed forPath:(uint64_t)path withType:(int)type isImmortal:
{
  if (result)
  {
    v9 = result;
    [result[1] lock];
    v10 = [v9[5] objectForKey:needed];
    if (v10)
    {
      v11 = v10;
      [v9[1] unlock];

      return v11;
    }

    else
    {
      v12 = [(__NSBundleTables *)v9 _addBundleLocked:a2 forPath:needed withType:path forClass:0 isImmortal:type];
      [v9[1] unlock];
      return v12;
    }
  }

  return result;
}

- (id)_addBundleLocked:(uint64_t)locked forPath:(uint64_t)path withType:(uint64_t)type forClass:(int)class isImmortal:
{
  if (result)
  {
    v10 = result;
    v11 = __ROR8__(path - 0x10000, 16);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v13 = result + 2;
        v12 = result[2];
LABEL_10:
        if (([v12 containsObject:a2] & 1) == 0)
        {
          v14 = a2;
          [*v13 addObject:a2];
        }

LABEL_12:
        if (locked)
        {
          result = [v10[5] objectForKey:locked];
          if (result)
          {
            if (!type)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }

          v15 = a2;
          [v10[5] setObject:a2 forKey:locked];
        }

        result = 0;
        if (!type)
        {
LABEL_15:
          if (result)
          {
            return result;
          }

          goto LABEL_21;
        }

LABEL_19:
        result = [v10[6] objectForKey:type];
        if (result)
        {
          return result;
        }

        v16 = a2;
        [v10[6] setObject:a2 forKey:type];
        result = 0;
LABEL_21:
        if (class)
        {
          [v10[7] addPointer:a2];
          return 0;
        }

        return result;
      }

      if (v11 != 3)
      {
        goto LABEL_12;
      }
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_12;
      }

      v13 = result + 3;
      v12 = result[3];
      goto LABEL_10;
    }

    v13 = result + 4;
    v12 = result[4];
    goto LABEL_10;
  }

  return result;
}

- (id)addBundle:(uint64_t)bundle forPath:(uint64_t)path withType:(uint64_t)type forClass:(int)class isImmortal:
{
  if (result)
  {
    v11 = result;
    [result[1] lock];
    v12 = [(__NSBundleTables *)v11 _addBundleLocked:a2 forPath:bundle withType:path forClass:type isImmortal:class];
    [v11[1] unlock];
    return v12;
  }

  return result;
}

- (uint64_t)addStaticFrameworkBundles:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = +[NSBundle mainBundle];
    v5 = [NSHashTable hashTableWithOptions:0];
    [*(v3 + 8) lock];
    [(NSHashTable *)v5 unionHashTable:*(v3 + 24)];
    [(NSHashTable *)v5 unionHashTable:*(v3 + 32)];
    [(NSHashTable *)v5 unionHashTable:*(v3 + 16)];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (![(NSHashTable *)v5 containsObject:v10])
          {
            [v10 __static];
            [*(v3 + 16) addObject:v10];
          }
        }

        v7 = [a2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v7);
    }

    if (v4)
    {
      [*(v3 + 24) removeObject:v4];
    }

    return [*(v3 + 8) unlock];
  }

  return result;
}

- (id)bundleForClass:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[1] lock];
    v4 = [v3[6] objectForKey:a2];
    [v3[1] unlock];
    return v4;
  }

  return result;
}

- (uint64_t)allFrameworks
{
  if (result)
  {
    v1 = result;
    v2 = [NSHashTable hashTableWithOptions:0];
    [*(v1 + 8) lock];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 16)];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 32)];
    [(NSHashTable *)v2 minusHashTable:*(v1 + 24)];
    [*(v1 + 8) unlock];

    return [(NSHashTable *)v2 allObjects];
  }

  return result;
}

- (uint64_t)loadedBundles
{
  if (result)
  {
    v1 = result;
    v2 = [NSHashTable hashTableWithOptions:0];
    v3 = +[NSBundle mainBundle];
    if (v3)
    {
      [(NSHashTable *)v2 addObject:v3];
    }

    [*(v1 + 8) lock];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 24)];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 16)];
    [(NSHashTable *)v2 unionHashTable:*(v1 + 32)];
    [*(v1 + 8) unlock];

    return [(NSHashTable *)v2 allObjects];
  }

  return result;
}

@end