@interface CIFilterClassDefaults
+ (id)cache;
+ (id)classDefaultsForClass:(Class)a3;
+ (void)clearCache;
@end

@implementation CIFilterClassDefaults

+ (id)cache
{
  if (+[CIFilterClassDefaults cache]::onceToken != -1)
  {
    +[CIFilterClassDefaults cache];
  }

  return +[CIFilterClassDefaults cache]::cache;
}

uint64_t __30__CIFilterClassDefaults_cache__block_invoke()
{
  +[CIFilterClassDefaults cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassDefaults cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassDefaults"];
  [+[CIFilterClassDefaults cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassDefaults cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  v2 = [a1 cache];

  [v2 removeAllObjects];
}

+ (id)classDefaultsForClass:(Class)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 cache];
  v5 = objc_opt_class();
  if (![(objc_class *)a3 isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == a3)
  {
    return MEMORY[0x1E695E0F8];
  }

  v6 = [v4 objectForKey:a3];
  if (!v6)
  {
    v20 = v4;
    CustomAttributes = getCustomAttributes(a3);
    v21 = a3;
    v8 = [+[CIFilterClassInfo classInfoForClass:](CIFilterClassInfo classInfoForClass:{a3), "inputKeys"}];
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [MEMORY[0x1E695DF90] dictionary];
          StdAttrsForKey = getStdAttrsForKey(v13);
          if (StdAttrsForKey)
          {
            [v14 addEntriesFromDictionary:StdAttrsForKey];
          }

          v16 = [CustomAttributes valueForKey:v13];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 addEntriesFromDictionary:v17];
            }
          }

          v18 = [v14 objectForKey:@"CIAttributeDefault"];
          if (!v18)
          {
            v18 = [v14 objectForKey:@"CIAttributeIdentity"];
            if (!v18)
            {
              continue;
            }
          }

          [v6 setObject:v18 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v20 setObject:v6 forKey:v21];
  }

  return v6;
}

@end