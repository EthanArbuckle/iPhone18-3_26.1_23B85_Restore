@interface CIFilterClassCategories
+ (id)cache;
+ (id)classCategoriesForClass:(Class)a3;
+ (void)clearCache;
@end

@implementation CIFilterClassCategories

+ (id)cache
{
  if (+[CIFilterClassCategories cache]::onceToken != -1)
  {
    +[CIFilterClassCategories cache];
  }

  return +[CIFilterClassCategories cache]::cache;
}

uint64_t __32__CIFilterClassCategories_cache__block_invoke()
{
  +[CIFilterClassCategories cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassCategories cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassCategories"];
  [+[CIFilterClassCategories cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassCategories cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  v2 = [a1 cache];

  [v2 removeAllObjects];
}

+ (id)classCategoriesForClass:(Class)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a1 cache];
  v5 = objc_opt_class();
  if (![(objc_class *)a3 isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == a3)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = [v4 objectForKey:a3];
  if (!v6)
  {
    v7 = [getCustomAttributes(a3) valueForKey:@"CIAttributeFilterCategories"];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
        if (v6)
        {
LABEL_16:
          if (((classIsBuiltinFilter(a3) & 1) != 0 || classIsSystemFilter(a3)) && (([v6 containsObject:@"CICategoryGeometryAdjustment"] & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryDistortionEffect") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryTransition") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryBlur") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategorySharpen") & 1) != 0 || objc_msgSend(v6, "containsObject:", @"CICategoryTileEffect")))
          {
            v6 = [v6 arrayByAddingObject:@"CICategoryHighDynamicRange"];
          }

          [v4 setObject:v6 forKey:a3];
          return v6;
        }
      }

      else
      {
        v9 = ci_logger_api();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v13 = "+[CIFilterClassCategories classCategoriesForClass:]";
          v14 = 2114;
          v15 = [(objc_class *)a3 description];
          _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "%{public}s kCIAttributeFilterCategories for class %{public}@ is not an array", buf, 0x16u);
        }
      }
    }

    if ((classIsBuiltinFilter(a3) & 1) != 0 || classIsSystemFilter(a3))
    {
      v11 = @"CICategoryApplePrivate";
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_16;
  }

  return v6;
}

@end