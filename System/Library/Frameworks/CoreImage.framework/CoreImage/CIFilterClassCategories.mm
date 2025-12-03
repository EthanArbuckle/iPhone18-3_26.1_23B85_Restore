@interface CIFilterClassCategories
+ (id)cache;
+ (id)classCategoriesForClass:(Class)class;
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
  cache = [self cache];

  [cache removeAllObjects];
}

+ (id)classCategoriesForClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  cache = [self cache];
  v5 = objc_opt_class();
  if (![(objc_class *)class isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == class)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = [cache objectForKey:class];
  if (!v6)
  {
    v7 = [getCustomAttributes(class) valueForKey:@"CIAttributeFilterCategories"];
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
          if (((classIsBuiltinFilter(class) & 1) != 0 || classIsSystemFilter(class)) && (([v6 containsObject:@"CICategoryGeometryAdjustment"] & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryDistortionEffect") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryTransition") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategoryBlur") & 1) != 0 || (objc_msgSend(v6, "containsObject:", @"CICategorySharpen") & 1) != 0 || objc_msgSend(v6, "containsObject:", @"CICategoryTileEffect")))
          {
            v6 = [v6 arrayByAddingObject:@"CICategoryHighDynamicRange"];
          }

          [cache setObject:v6 forKey:class];
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
          v15 = [(objc_class *)class description];
          _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "%{public}s kCIAttributeFilterCategories for class %{public}@ is not an array", buf, 0x16u);
        }
      }
    }

    if ((classIsBuiltinFilter(class) & 1) != 0 || classIsSystemFilter(class))
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